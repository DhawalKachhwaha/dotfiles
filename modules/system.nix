{...}: {
  systemd = {
    coredump.settings.Coredump = {
      MaxUse = "1G";
      KeepFree = "2G";
      ProcessSizeMax = "512M";
    };
  };
}
