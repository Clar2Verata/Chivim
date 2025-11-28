{ lib, ... }:
{
  options.khanelivim.ai = {
    provider = lib.mkOption {
      type = lib.types.nullOr (
        lib.types.enum [
          "copilot"
          "windsurf"
        ]
      );
      default = null;
      description = "AI completion provider to use";
    };

    chatEnable = lib.mkEnableOption "AI chat functionality" // {
      default = false;
    };
  };
}
