{ config, lib, ...}:

{
    services.mbpfan.enable = lib.mkDefault true;

    boot.kernelParams = [
        "acpi_backlight=vendor"
        "acpi_osi="
    ];

    hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
