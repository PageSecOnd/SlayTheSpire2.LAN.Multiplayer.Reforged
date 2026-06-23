# Changelog

All notable changes to this project will be documented in this file.

The format is loosely based on Keep a Changelog.

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
