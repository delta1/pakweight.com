{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    audiowaveform
    id3v2
    yt-dlp
    zola
  ];

  shellHook = ''
    echo "Zola development environment loaded"
    echo "Zola version: $(zola --version)"
    echo ""
    echo "Available commands:"
    echo "  zola serve    - Start development server"
    echo "  zola build    - Build the site"
    echo "  zola check    - Check the site for errors"
    echo ""
  '';
}
