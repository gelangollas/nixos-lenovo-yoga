{ inputs, pkgs, ... }: {
    programs.auto-cpufreq.enable = true;
    programs.auto-cpufreq.settings = {
      battery = {
        ideapad_laptop_conservation_mode = true;
      };
    };
}
