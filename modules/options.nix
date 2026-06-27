{lib, ...}: {
  options.my = {
    username = lib.mkOption {
      type = lib.types.str;
      description = "Primary username";
    };
    fullName = lib.mkOption {
      type = lib.types.str;
      description = "Full name";
    };
  };
}
