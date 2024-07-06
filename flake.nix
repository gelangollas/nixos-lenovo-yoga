{
    inputs = {
        auto-cpufreq = {
            url = "github:AdnanHodzic/auto-cpufreq";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = {nixpkgs, auto-cpufreq, ...} @ inputs: {
        nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
            specialArgs = { inherit inputs; };
            modules = [
                ./configuration.nix
                auto-cpufreq.nixosModules.default
            ];
        };
    };
}
