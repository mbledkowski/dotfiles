{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    (
      let
        my-python-packages = python-packages: with python-packages; [
          requests
          python-dotenv
          semver
          flake8
        ];
        python-with-my-packages = python310.withPackages my-python-packages;
      in
      python-with-my-packages
    )
  ];
}
