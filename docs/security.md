---
layout: default
title: Security Contributions by John Neffenger
description: John Neffenger's security contributions to open-source software.
---

# Security

This page describes the subset of my [contributions](contributions.html) related to the security of open-source projects.

## Motivation

In October 2020, I noticed that Ubuntu and other Linux distributions were [not keeping pace](https://answers.launchpad.net/ubuntu/+source/openjdk-15/+question/693547) with the rapid release schedules of many software development tools.
To use the latest releases, I started downloading and installing the tools from their vendor's or project's website instead of getting them solely from the Ubuntu package repositories that provide my operating system.

In December 2020, I learned of the [SolarWinds attack](https://www.linux.com/news/preventing-supply-chain-attacks-like-solarwinds/) and became increasingly worried about the software on my workstation.
I was particularly concerned that the developer tools I had installed were adding hundreds of trusted sources to my system through their build-time dependencies and run-time plugins.
The current releases of the tools were not available from Ubuntu, but I was no longer willing to trust any packages built elsewhere.

To solve this dilemma, I started working with the upstream projects to close the gaps in their security by:

* adding **dependency verification,**
* enabling **reproducible builds,** and
* creating **verifiable builds.**

## Dependency Verification

OpenJFX is the open-source project that develops JavaFX.
It uses a complex build system based on Gradle to build JavaFX and its native libraries on Linux, macOS, and Windows.
My first goal was to add the three security measures recommended by the Gradle team for any project using Gradle:

| Project | Issue                       | Fix        | Integrated             | Summary                                |
| ------- | --------------------------- | ---------- | ---------------------- | -------------------------------------- |
| OpenJFX | [JDK-8262236][a1]{:.nowrap} | [#411][a4] | *2021-02-23*{:.nowrap} | Configure Gradle checksum verification |
| OpenJFX | [JDK-8263204][a2]{:.nowrap} | [#419][a5] | *2021-03-09*{:.nowrap} | Add Gradle Wrapper Validation Action   |
| OpenJFX | [JDK-8264010][a3]{:.nowrap} | [#437][a6] | *2021-05-03*{:.nowrap} | Add Gradle dependency verification     |

[a1]: https://bugs.openjdk.org/browse/JDK-8262236
[a2]: https://bugs.openjdk.org/browse/JDK-8263204
[a3]: https://bugs.openjdk.org/browse/JDK-8264010

[a4]: https://github.com/openjdk/jfx/pull/411
[a5]: https://github.com/openjdk/jfx/pull/419
[a6]: https://github.com/openjdk/jfx/pull/437

These changes reduce the risk of compromising the build system or including malware in JavaFX.

## Reproducible Builds

In March 2021, I got involved in the [Reproducible Builds](https://reproducible-builds.org/) project when I saw that Bernhard Wiedemann's [initial pull request](https://github.com/openjdk/jfx/pull/99) for JavaFX had stalled.
I created a [new pull request](https://github.com/openjdk/jfx/pull/446) that was broader in scope and sought to enable reproducible builds for all JavaFX artifacts on all three platforms: Linux, macOS, and Windows.
After more than two years of code reviews, cross-platform testing, patience, and persuasion, the pull request was approved by the project's lead reviewers in June 2023.

The experience I gained working on the JavaFX pull request allowed me to be the main reviewer of a [related enhancement](https://github.com/openjdk/jdk/pull/6481) to the `jar` and `jmod` tools of the Java Development Kit (JDK).

During this time, I also found and fixed the [last remaining bug](https://bugs.openjdk.org/browse/JDK-8292892?jql=labels%3Dreproducible-build) that blocked reproducible builds of the JDK.
The bug was [especially interesting](https://github.com/openjdk/jdk/pull/10070#issuecomment-1230888930) because, although its cause was unrelated to reproducible builds, it would have been practically impossible to find without them.

All three contributions are listed below.
I reviewed the first pull request and authored the other two:

| Project | Issue                       | Fix          | Integrated             | Summary                                                          |
| ------- | --------------------------- | ------------ | ---------------------- | ---------------------------------------------------------------- |
| JDK     | [JDK-8276766][b1]{:.nowrap} | [#6481][b4]  | *2021-12-11*{:.nowrap} | Enable jar and jmod to produce deterministic timestamped content |
| JDK     | [JDK-8292892][b2]{:.nowrap} | [#10070][b5] | *2022-09-21*{:.nowrap} | Javadoc index descriptions are not deterministic                 |
| OpenJFX | [JDK-8264449][b3]{:.nowrap} | [#446][b6]   | *2023-06-20*{:.nowrap} | Enable reproducible builds with SOURCE_DATE_EPOCH                |

These changes allow anyone to publish reproducible builds of the JDK and JavaFX.

[b1]: https://bugs.openjdk.org/browse/JDK-8276766
[b2]: https://bugs.openjdk.org/browse/JDK-8292892
[b3]: https://bugs.openjdk.org/browse/JDK-8264449

[b4]: https://github.com/openjdk/jdk/pull/6481
[b5]: https://github.com/openjdk/jdk/pull/10070
[b6]: https://github.com/openjdk/jfx/pull/446

## Verifiable Builds

I decided early on to publish my own builds of the tools I use in software development.
By building the tools on the same [Launchpad build farm](https://launchpad.net/builders) that builds the Ubuntu operating system, I could once again have a single trusted source for all of the software on my workstation.

The easiest way to build software on Launchpad, especially for Ubuntu, is by creating a Snap package.
Snap packages have the additional security benefit of running in [complete isolation](https://snapcraft.io/docs/snap-confinement) with limited access to the system.
I created Snap packages of the JDK and JavaFX with the goal of providing the most open and transparent builds available and allowing developers to verify exactly where and how each package was built.
See the [Verify](https://github.com/jgneff/openjdk#verify) section of the README files for details.

| Project | Source        | Package       | Published              | Summary                                        |
| ------- | ------------- | ------------- | ---------------------- | ---------------------------------------------- |
| OpenJFX | [openjfx][c1] | [openjfx][c3] | *2020-11-25*{:.nowrap} | Current JavaFX release and early-access builds |
| JDK     | [openjdk][c2] | [openjdk][c4] | *2020-12-03*{:.nowrap} | Current JDK release and early-access builds    |

I also created strictly-confined packages of Apache NetBeans and Apache Maven:

| Project  | Source                  | Package                 | Published              | Summary                                      |
| -------- | ----------------------- | ----------------------- | ---------------------- | -------------------------------------------- |
| NetBeans | [strictly-netbeans][d1] | [strictly-netbeans][d3] | *2022-06-01*{:.nowrap} | Apache NetBeans® in a strictly-confined snap |
| Maven    | [strictly-maven][d2]    | [strictly-maven][d4]    | *2022-06-01*{:.nowrap} | Apache Maven™ in a strictly-confined snap    |

These packages allow developers on Linux to install, verify, and run a complete set of development tools that includes the Java Development Kit, Apache Maven, and Apache NetBeans, all within a strictly-confined environment on their system.

[c1]: https://github.com/jgneff/openjfx
[c2]: https://github.com/jgneff/openjdk

[c3]: https://snapcraft.io/openjfx
[c4]: https://snapcraft.io/openjdk

[d1]: https://github.com/jgneff/strictly-netbeans
[d2]: https://github.com/jgneff/strictly-maven

[d3]: https://snapcraft.io/strictly-netbeans
[d4]: https://snapcraft.io/strictly-maven

## Remaining Work

Although the bulk of work related to reproducible builds is complete for the JDK and OpenJFX projects, that work uncovered the following additional issues:

[JDK-8306884](https://bugs.openjdk.org/browse/JDK-8306884): Building WebKit on Linux is not deterministic
[JDK-8306885](https://bugs.openjdk.org/browse/JDK-8306885): Building WebKit on Windows is not deterministic
: Building the optional WebKit native library for JavaFX on Linux or Windows is often not deterministic.
The library, called `libjfxwebkit.so` on Linux and `jfxwebkit.dll` on Windows, is usually different from one build to the next even on the same system with the same project path.

[JDK-8306886](https://bugs.openjdk.org/browse/JDK-8306886): Building macOS libraries can be non-deterministic
: There are often differences in some of the JavaFX native libraries between any two builds on macOS, such as `libjavafx_iio.dylib`, `libglib-lite.dylib`, and `libjfxwebkit.dylib`.

[JDK-8307082](https://bugs.openjdk.org/browse/JDK-8307082): Build path is recorded in JavaFX Controls module
: The absolute path of the project directory ends up in the JavaFX Controls module `javafx.controls.jar`, breaking reproducible builds for systems using different build paths.
