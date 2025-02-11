{ config, lib, ... }:

{
  # services.mbpfan.enable = lib.mkDefault true;
  #
  # boot.kernelParams = [
  #   # "acpi_backlight=vendor"
  #   "acpi_osi="
  # ];

  # seems to be a bug
  # hardware.facetimehd.enable = lib.mkDefault (config.nixpkgs.config.allowUnfree or false);
  hardware.facetimehd.enable = lib.mkForce false;
  boot.kernelParams = lib.mkForce [
    "hid_apple.iso_layout=1"
  ];

  # hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
