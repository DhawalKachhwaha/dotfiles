{pkgs, ...}: {
  programs.wireshark = {
    enable = true;
  };

  environment.systemPackages = with pkgs; [
    # network analysis
    nmap
    tcpdump
    traceroute

    # web testing
    burpsuite

    # reverse engineering
    ghidra

    # ctf tools
    steghide
    exiftool
    file
    binutils
    hexdump
  ];
}
