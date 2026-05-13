# Copyright 2026 AshGrey
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this software and associated documentation files (the "Software"), to deal in the
# Software without restriction, including without limitation the rights to use, copy,
# modify, merge, publish, distribute, sublicense, and/or sell copies of the Software,
# and to permit persons to whom the Software is furnished to do so, subject to the
# following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED
# INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
# PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#
# This is the header of every handbook, you can add predefined functions or
# styles here.

{
  description = "To Learn by Courses";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      # Define the systems you want to support
      allSystems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];

      # A helper function to generate the shell for each system
      forAllSystems = f: nixpkgs.lib.genAttrs allSystems (system: f {
        pkgs = import nixpkgs { inherit system; };
      });
    in
    {
      packages = forAllSystems ({ pkgs }: {
        homework = pkgs.writeShellApplication {
          name = "homework";
          runtimeInputs = [ pkgs.typst ];
          text = ''
            mkdir -p output
            FAILED=0
            SUCCESS=0
            find . -name "*.typ" -type f -print0 | while IFS= read -r -d "" file; do
              echo "Compiling $file..."
              filename=$(basename "$file" .typ)
              # Correct syntax: typst compile <INPUT> [OUTPUT]
              if typst compile "$file" "output/''${filename}.pdf" 2>&1; then
                echo "✓ Successfully compiled: $file"
                SUCCESS=$((SUCCESS + 1))
              else
                echo "✗ Failed to compile: $file"
                FAILED=$((FAILED + 1))
              fi
            done
            echo ""
            echo "=== Compilation Summary ==="
            echo "Successful: $SUCCESS"
            echo "Failed: $FAILED"
            ls -la output/ || echo "No PDFs generated"
            if [ $FAILED -gt 0 ]; then
              echo "⚠️ Some Typst files failed to compile"
            fi
          '';
        };
        clean = pkgs.writeShellApplication {
          name = "clean";
          text = ''
	          echo "→ Cleaning up build directory"
            if ls output/ >/dev/null 2>&1; then
              rm -rf output
              echo "✅ clean successfully"
            else
              echo "❌ failed to clean because there are no matched files"
            fi
          '';
        };
      });
      devShells = forAllSystems ({ pkgs }: {
        default = pkgs.mkShell {
          packages = with pkgs; [
            typst
          ];
          shellHook = ''
            echo "→ Environment has been set up"
            typst --version
          '';
        };
      });
    };
}
