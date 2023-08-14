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
          ipykernel
          jupyterlab
          # tensorflow
          # keras
          # wandb
          widgetsnbextension
          pip
        ];
        python-with-my-packages = python310.withPackages my-python-packages;
      in
      python-with-my-packages
    )
    conda
  ];
}
