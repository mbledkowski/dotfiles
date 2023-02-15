{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    firefox-wayland
    brave
    chromium
    epiphany
    qutebrowser
    tor-browser-bundle-bin
  ];
  programs.firefox = {
    enable = true;
    # extensions = with pkgs.nur.repos.rycee.firefox-addons; [
    #   darkreader
    #   localcdn
    #   reddit-enhancement-suite
    #   tree-style-tab
    #   tst-tab-search
    #   ublock-origin
    #   bypass-paywalls-clean
    #   return-youtube-dislikes
    #   sponsorblock
    #   stylus
    #   wappalyzer
    #   react-devtools
    # ];
    package = pkgs.wrapFirefox pkgs.firefox-unwrapped {
      extraPolicies = {
        ExtensionSettings = { };
      };
    };
    # profiles = {
    #   default = {
    #     isDefault = true;
    #     settings = {
    #       "browser.contentblocking.category" = "strict";
    #       "browser.uidensity" = 1; # Dense
    #       "dom.security.https_only_mode" = true;
    #       "experiments.activeExperiment" = false;
    #       "experiments.enabled" = false;
    #       "experiments.supported" = false;
    #       "extensions.pocket.enabled" = false;
    #       "network.allow-experiments" = false;
    #     };
    #     userChrome = ''
    #               /* Hide main tabs toolbar */
    #       #TabsToolbar {
    #           visibility: collapse;
    #       }

    #       /* Sidebar min and max width removal */
    #       #sidebar {
    #           max-width: none !important;
    #           min-width: 0px !important;
    #       }

    #       /* Hide splitter, when using Tree Style Tab. */
    #       #sidebar-box[sidebarcommand="treestyletab_piro_sakura_ne_jp-sidebar-action"]+#sidebar-splitter {
    #           display: none !important;
    #       }

    #       /* Hide sidebar header, when using Tree Style Tab. */
    #       #sidebar-box[sidebarcommand="treestyletab_piro_sakura_ne_jp-sidebar-action"] #sidebar-header {
    #           visibility: collapse;
    #       }

    #       /* Shrink sidebar until hovered, when using Tree Style Tab. */
    #       :root {
    #           --thin-tab-width: 55px;
    #           --wide-tab-width: 320px;
    #       }

    #       #sidebar-box:not([sidebarcommand="treestyletab_piro_sakura_ne_jp-sidebar-action"]) {
    #           min-width: var(--wide-tab-width) !important;
    #           max-width: none !important;
    #       }

    #       #sidebar-box[sidebarcommand="treestyletab_piro_sakura_ne_jp-sidebar-action"] {
    #           position: relative !important;
    #           min-width: var(--thin-tab-width) !important;
    #           max-width: var(--thin-tab-width) !important;
    #           opacity: 0.5 !important;
    #       }

    #       #sidebar-box[sidebarcommand="treestyletab_piro_sakura_ne_jp-sidebar-action"]:hover {
    #           min-width: var(--wide-tab-width) !important;
    #           max-width: var(--wide-tab-width) !important;

    #           /* Negative right-margin to keep page from being pushed to the side. */
    #           margin-right: calc((var(--wide-tab-width) - var(--thin-tab-width)) * -1) !important;
    #           z-index: 1;
    #           opacity: 1 !important;
    #       }
    #     '';
    #   };
    # };
  };
  environment.sessionVariables = {
    MOZ_ENABLE_WAYLAND = "1";
  };
}
