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

1. adding **dependency verification,**
2. enabling **reproducible builds,** and
3. creating **verifiable builds.**

## Dependency Verification

OpenJFX is the open-source project that develops JavaFX.
It uses a complex build system based on Gradle to build JavaFX and its native libraries on Linux, macOS, and Windows.
My first goal was to add the three security measures recommended by the Gradle team for any project using Gradle:

| Project | Issue             | Fix        | Integrated | Description                            |
| ------- | ----------------- | ---------- | ---------- | -------------------------------------- |
| OpenJFX | [JDK-8262236][a1] | [#411][b1] | 2021-02-23 | Configure Gradle checksum verification |
| OpenJFX | [JDK-8263204][a2] | [#419][b2] | 2021-03-09 | Add Gradle Wrapper Validation Action   |
| OpenJFX | [JDK-8264010][a3] | [#437][b3] | 2021-05-03 | Add Gradle dependency verification     |

[a1]: https://bugs.openjdk.org/browse/JDK-8262236
[a2]: https://bugs.openjdk.org/browse/JDK-8263204
[a3]: https://bugs.openjdk.org/browse/JDK-8264010

[b1]: https://github.com/openjdk/jfx/pull/411
[b2]: https://github.com/openjdk/jfx/pull/419
[b3]: https://github.com/openjdk/jfx/pull/437

These changes reduce the risk of compromising the build system or including malware in JavaFX.

## Reproducible Builds

In March 2021, I got involved in the [Reproducible Builds](https://reproducible-builds.org/who/people/) project when I saw that Bernhard Wiedemann's [initial pull request](https://github.com/openjdk/jfx/pull/99) for OpenJFX had stalled.
I created a [new pull request](https://github.com/openjdk/jfx/pull/446), shown in the table below, that was broader in scope and sought to enable fully reproducible builds of all JavaFX artifacts on all three platforms: Linux, macOS, and Windows.
After more than two years of code reviews, cross-platform testing, patience, and persuasion, the pull request was approved by the project's lead reviewers in June 2023.

During this time, I also found and fixed the [last remaining bug](https://bugs.openjdk.org/browse/JDK-8292892?jql=labels%3Dreproducible-build) that blocked fully reproducible builds of the Java Development Kit.
The bug was [especially interesting](https://github.com/openjdk/jdk/pull/10070#issuecomment-1230888930) because its cause was unrelated to reproducible builds, yet it would have been practically impossible to find without them.

| Project | Issue             | Fix          | Integrated | Description                                       |
| ------- | ----------------- | ------------ | ---------- | ------------------------------------------------- |
| OpenJDK | [JDK-8292892][c2] | [#10070][d2] | 2022-09-21 | Javadoc index descriptions are not deterministic  |
| OpenJFX | [JDK-8264449][c1] | [#446][d1]   | 2023-06-20 | Enable reproducible builds with SOURCE_DATE_EPOCH |

These changes allow myself and others to publish reproducible builds of the JDK and JavaFX.

[c1]: https://bugs.openjdk.org/browse/JDK-8264449
[c2]: https://bugs.openjdk.org/browse/JDK-8292892

[d1]: https://github.com/openjdk/jfx/pull/446
[d2]: https://github.com/openjdk/jdk/pull/10070

## Verifiable Builds

I decided early on to publish my own builds of the tools I use in software development.
By building the tools on the same [Launchpad build farm](https://launchpad.net/builders) that builds the Ubuntu operating system, I could once again have a single trusted source for all of the software on my workstation.

The easiest way to build software on Launchpad, especially for Ubuntu, is by creating a Snap package.
Snap packages have the additional security benefit of running in [complete isolation](https://snapcraft.io/docs/snap-confinement) with limited access to the system.
I decided to publish Snap packages for all current releases and early-access builds of the JDK and JavaFX, with the goal of creating the most open, transparent, and verifiable builds available:

| Project | Source        | Created    | Description                                    |
| ------- | ------------- | ---------- | ---------------------------------------------- |
| OpenJFX | [openjfx][e1] | 2020-11-23 | Current JavaFX release and early-access builds |
| OpenJDK | [openjdk][e2] | 2020-12-02 | Current JDK release and early-access builds    |

These packages allow myself and others to install verifiable builds of the latest JDK and JavaFX releases.

I also created strictly-confined packages of Apache NetBeans and Apache Maven:

| Project  | Source                  | Created    | Description                                  |
| -------- | ----------------------- | ---------- | -------------------------------------------- |
| NetBeans | [strictly-netbeans][f2] | 2021-10-16 | Apache NetBeans® in a strictly-confined snap |
| Maven    | [strictly-maven][f1]    | 2021-10-19 | Apache Maven™ in a strictly-confined snap    |

These packages allow myself and others to run a complete set of development tools that includes Apache NetBeans, Apache Maven, and the Java Development Kit, all within a strictly-confined environment.

[e1]: https://github.com/jgneff/openjfx
[e2]: https://github.com/jgneff/openjdk

[f1]: https://github.com/jgneff/strictly-maven
[f2]: https://github.com/jgneff/strictly-netbeans

## Remaining Work

Although the bulk of work related to reproducible builds is complete for the OpenJDK and OpenJFX projects, that work uncovered the following additional issues:

[JDK-8306884](https://bugs.openjdk.org/browse/JDK-8306884): Building WebKit on Linux is not deterministic
[JDK-8306885](https://bugs.openjdk.org/browse/JDK-8306885): Building WebKit on Windows is not deterministic
: Building the optional WebKit native library for Linux or Windows is often not deterministic.
The library, called `libjfxwebkit.so` on Linux and `jfxwebkit.dll` on Windows, differs from one build to the next on the same system with the same project path.

[JDK-8306886](https://bugs.openjdk.org/browse/JDK-8306886): Building macOS libraries can be non-deterministic
: There are often differences in some JavaFX native libraries between any two builds on macOS, such as `libjavafx_iio.dylib`, `libglib-lite.dylib`, and `libjfxwebkit.dylib`.

[JDK-8307082](https://bugs.openjdk.org/browse/JDK-8307082): Build path is recorded in JavaFX Controls module
: The absolute path of the project directory ends up in the JavaFX Controls module `javafx.controls.jar`, breaking reproducible builds for systems using different build paths.
