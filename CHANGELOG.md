# Changelog

All notable changes to this project will be documented in this file.

The format is loosely based on Keep a Changelog.

---

## [1.1.0] - 2026-06-24

### Added

* Added optional ModConfig integration.
* Added a dedicated ModConfig settings section when ModConfig is installed.
* Added configurable default LAN port through ModConfig.
* Added configurable maximum player count through ModConfig.
* Added configurable connection timeout through ModConfig.
* Added configurable default server address through ModConfig.
* Added option to remember or ignore the last joined server address.
* Added configurable player name through ModConfig.
* Added configurable preferred Net ID through ModConfig.

### Changed

* Kept the original `lan_settings.json` configuration file as the runtime settings backend.
* ModConfig values are synchronized back to the existing LAN settings model.
* The original in-game settings injection is kept as a fallback when ModConfig is not installed.
* When ModConfig is available, duplicated legacy settings entries are hidden from the normal settings page.
* Join address handling now respects the configured default LAN port when no explicit port is provided.
* Connection timeout is now read from the LAN settings model instead of being hardcoded.

### Fixed

* Prevented duplicated LAN settings UI entries when ModConfig is installed.
* Improved consistency between the join screen, saved settings, and ModConfig values.
* Reduced the need to manually edit `lan_settings.json` for common LAN multiplayer options.

### Notes

* ModConfig support is optional.
* This mod does not directly require BaseLib or ModConfig to launch.
* If ModConfig is not installed, the mod should continue to work using its existing settings behavior.
* ModConfig may have its own dependencies depending on how it is installed.

---

## [1.0.0] - 2026-06-23

Initial release of **SlayTheSpire2.LAN.Multiplayer.Reforged**.

### Fork Information

* Forked from kmyuhkyuk's SlayTheSpire2.LAN.Multiplayer.
* Continued community maintenance for newer versions of Slay the Spire 2.
* Remains licensed under GPL-3.0 in accordance with the original project.

### Added

* Support for Slay the Spire 2 v0.107.1.
* Updated project references for current game builds.
* Updated build environment for .NET 9 and Godot 4.5.1 Mono.

### Fixed

* Fixed compatibility issues caused by changes to the INetMessage interface.
* Fixed runtime errors related to missing ShouldBuffer implementations.
* Fixed ThemeConstants API incompatibilities introduced by newer game versions.
* Fixed Harmony patch failures caused by RunSaveManager method signature changes.
* Fixed compilation failures caused by outdated game API references.
* Fixed multiple startup and runtime crashes caused by internal engine updates.

### Changed

* Renamed the project to SlayTheSpire2.LAN.Multiplayer.Reforged.
* Updated internal patches to match current Slay the Spire 2 APIs.
* Improved overall compatibility with modern game builds.

### Notes

* This release focuses on restoring functionality and compatibility.
* Multiplayer behavior remains consistent with the original project whenever possible.
* All players should use the same game version, mod version, and gameplay-affecting mods when playing together.

---

## Original Project

Original repository:

https://github.com/kmyuhkyuk/SlayTheSpire2.LAN.Multiplayer

Original author:

kmyuhkyuk
