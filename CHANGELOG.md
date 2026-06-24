# Changelog

All notable changes to this project will be documented in this file.

The format is loosely based on Keep a Changelog, and this project follows Semantic Versioning where practical.

---

## [1.1.1] - 2026-06-24

### Fixed

* Fixed untranslated LAN settings when ModConfig is not installed.
* Fixed raw localization keys being displayed in the fallback settings interface, including:

```text
settings_ui.SlayTheSpire2.LAN.Multiplayer.Reforged.HOST_PORT
settings_ui.SlayTheSpire2.LAN.Multiplayer.Reforged.HOST_MAX_PLAYERS
settings_ui.SlayTheSpire2.LAN.Multiplayer.Reforged.PLAYER_NAME
settings_ui.SlayTheSpire2.LAN.Multiplayer.Reforged.NET_ID
```

* Fixed mismatches between localization keys referenced by the DLL and entries contained in the PCK resource package.
* Fixed localization resources still using the original project identifier.
* Fixed the internal PCK resource directory still using:

```text
SlayTheSpire2.LAN.Multiplayer
```

instead of:

```text
SlayTheSpire2.LAN.Multiplayer.Reforged
```

* Fixed incorrectly repacked resource files using the older Godot Pack V2 format.

### Changed

* Migrated localization paths and keys to the Reforged project identifier.
* Rebuilt the PCK resource package using Godot 4.5.1 Pack V3.
* Updated translated LAN menu and settings resources.
* Ensured that the DLL and PCK use matching Reforged localization identifiers.

### Notes

* This is a localization hotfix for v1.1.0.
* BaseLib remains a required dependency.
* ModConfig remains optional.
* Players using v1.1.0 should update to v1.1.1, especially when using the original fallback settings interface without ModConfig.

---

## [1.1.0] - 2026-06-24

### Added

* Added BaseLib integration.
* Added optional ModConfig integration.
* Added a dedicated LAN Multiplayer configuration section when ModConfig is installed.
* Added configurable default LAN port.
* Added configurable maximum player count.
* Added configurable connection timeout.
* Added configurable default server address.
* Added an option to remember the last joined server address.
* Added configurable player name.
* Added configurable preferred Net ID.

### Changed

* BaseLib is now a required dependency.
* Kept the original LAN settings system as the runtime configuration backend.
* ModConfig values are synchronized with the existing LAN settings model.
* The original in-game settings interface remains available when ModConfig is not installed.
* Legacy settings entries are hidden when ModConfig is available to prevent duplicated configuration controls.
* Join connections now use the configured default LAN port when no explicit port is entered.
* Connection timeout is now read from the LAN settings model instead of using a hardcoded value.
* Updated the project identifier, assembly name, namespace and resource references to:

```text
SlayTheSpire2.LAN.Multiplayer.Reforged
```

### Fixed

* Prevented duplicated LAN settings entries when ModConfig is installed.
* Improved synchronization between ModConfig, the fallback settings interface and the existing LAN settings file.
* Improved handling of remembered join addresses.
* Reduced the need to manually edit LAN configuration files.

### Known Issues

* When ModConfig is not installed, some entries in the original fallback settings interface may display untranslated localization keys instead of readable text.
* This issue does not prevent the multiplayer functionality from working.
* The localization issue is fixed in v1.1.1.

### Dependencies

Required:

* BaseLib

Optional:

* ModConfig

### Notes

* ModConfig is not required to use the mod.
* Without ModConfig, the original in-game settings interface is used.
* BaseLib is required in all cases.

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
* Fixed missing ShouldBuffer implementations.
* Fixed ThemeConstants API incompatibilities.
* Fixed Harmony patch failures caused by RunSaveManager method signature changes.
* Fixed compilation failures caused by outdated game API references.
* Fixed startup and runtime crashes caused by internal game updates.

### Changed

* Renamed the project to SlayTheSpire2.LAN.Multiplayer.Reforged.
* Updated internal patches to match current Slay the Spire 2 APIs.
* Improved compatibility with modern game builds.

---

## Original Project

Original repository:

https://github.com/kmyuhkyuk/SlayTheSpire2.LAN.Multiplayer

Original author:

kmyuhkyuk
