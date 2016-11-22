use Mix.Config

version =
  Path.join(__DIR__, "VERSION")
  |> File.read!
  |> String.strip

config :nerves_system_odroidc1, :nerves_env,
  type:  :system,
  version: version,
  build_platform: Nerves.System.Platforms.BR,
  build_config: [
    defconfig: "nerves_defconfig",
    package_files: [
      "rootfs-additions",
      "linux-3.10.defconfig",
      "fwup.conf",
      "post-createfs.sh"
    ]
  ]
