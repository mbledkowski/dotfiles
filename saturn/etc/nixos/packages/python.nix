{pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    (let 
    my-python-packages = python-packages: with python-packages; [ 
    ];
    python-with-my-packages = python310.withPackages my-python-packages;
    in
    python-with-my-packages)
  ];
}
