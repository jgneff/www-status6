---
layout: default
title: Contributions by John Neffenger
description: John Neffenger's contributions to open-source software.
---

# Contributions

My contributions to open-source projects other than my own are listed below.
A separate page lists my [security contributions](security.html) in more detail.
Contributions that required significant time and effort are marked with a star (★).

> **A note on names:**
The [JDK Project](https://openjdk.org/projects/jdk/) develops the reference implementation of the Java Platform, Standard Edition, which is released as an [OpenJDK Build](https://jdk.java.net/).
The [OpenJFX Project](https://openjdk.org/projects/openjfx/) develops the JavaFX cross-platform application framework, which is released as a Software Development Kit and a set of Java module archives.
The [OpenJDK Community](https://openjdk.org/) includes both of these projects and many others related to the Java Platform.

## In Progress

**[NetBeans](https://github.com/apache/netbeans/pull/4206)** ★
: Build downloads fail due to response code 503
: Opened on 2022-06-07

## Completed

### 2023

Having created secure packages of my development tools in 2022, one of my goals this year is to create fully reproducible builds of the [OpenJDK](https://github.com/jgneff/openjdk) and [OpenJFX](https://github.com/jgneff/openjfx) packages that I publish.

**[OpenJFX](https://github.com/openjdk/jfx/pull/1253)**
: JavaFX runtime version is wrong at runtime
: 78 added, 51 deleted on 2023-10-14

**[OpenJFX](https://github.com/openjdk/jfx/pull/1124)**
: Let JavaFX be built on unknown architectures
: 9 added, 4 deleted on 2023-08-11

**[OpenJFX](https://github.com/openjdk/jfx/pull/446)** ★
: Enable reproducible builds with SOURCE_DATE_EPOCH
: 141 added, 31 deleted on 2023-06-20

**[NetBeans](https://github.com/apache/netbeans/pull/5372)**
: Import local schema to avoid DNS lookup in build
: 1 added, 1 deleted on 2023-01-27

### 2022

I continued the security work I started in 2021 by making related contributions to the JDK, Apache NetBeans, and Apache Tomcat projects.
These changes allowed me to create strictly-confined packages of my entire development environment: [OpenJDK](https://github.com/jgneff/openjdk), [Maven](https://github.com/jgneff/strictly-maven), and [NetBeans](https://github.com/jgneff/strictly-netbeans).
Two years after first reading about SolarWinds, I'm beginning to feel slightly less worried about supply-chain attacks on the software that I use for my development work.

**[Tomcat](https://github.com/apache/tomcat/pull/566)**
: Allow reproducible builds of all JDBC JAR files
: 9 added, 3 deleted on 2022-11-21

**[NetBeans](https://github.com/apache/netbeans/pull/4933)**
: Import local schema to avoid DNS lookup in build
: 272 added, 66 deleted on 2022-11-08

**[JDK](https://github.com/openjdk/jdk/pull/10070)** ★
: Javadoc index descriptions are not deterministic
: 320 added, 2 deleted on 2022-09-21

**[NetBeans](https://github.com/apache/netbeans/pull/3873)**
: Save cause of download error for BuildException
: 2 added, 1 deleted on 2022-03-26

**[Software Package Data Exchange](https://github.com/spdx/LicenseListPublisher/pull/128)**
: Clarify that the license identifier is deprecated
: 1 added, 1 deleted on 2022-01-04

### 2021

In December 2020, I learned of the [SolarWinds attack](https://www.linux.com/news/preventing-supply-chain-attacks-like-solarwinds/) and became increasingly worried about the software on my system.
I started adding features that prevent or detect such attacks to each of the projects I use in my own software development.
Those features include basic security measures, such as dependency verification, and longer-term goals, such as verified [reproducible builds](https://reproducible-builds.org/).

**[OpenJFX](https://github.com/openjdk/jfx/pull/437)** ★
: Add Gradle dependency verification
: 321 added, 12 deleted on 2021-05-03

**[OpenJFX Docs](https://github.com/openjfx/openjfx-docs/pull/122)**
: Add NETBEANS-3296 link about Javadoc and Sources
: 4 added, 1 deleted on 2021-04-13

**[OpenJFX](https://github.com/openjdk/jfx/pull/438)**
: LocalDateTimeStringConverterTest fails in Canada
: 1 added, 4 deleted on 2021-03-23

**[OpenJFX](https://github.com/openjdk/jfx/pull/419)**
: Add Gradle Wrapper Validation Action
: 11 added, 3 deleted on 2021-03-09

**[OpenJFX](https://github.com/openjdk/jfx/pull/411)**
: Configure Gradle checksum verification
: 1 added, 0 deleted on 2021-02-23

### 2020

It took all of 2020 for me to complete the JavaFX project that I started in 2019 and to fix the bugs I found while implementing the support for e-paper displays.

**[OpenJFX](https://github.com/openjdk/jfx/pull/258)**
: zForce touchscreen input device fails when closed and immediately reopened
: 2 added, 2 deleted on 2020-12-14

**[OpenJFX](https://github.com/openjdk/jfx/pull/350)**
: Fix build of Monocle for Linux
: 1 added, 1 deleted on 2020-12-11

**[OpenJFX](https://github.com/openjdk/jfx/pull/256)**
: Create a daemon thread for MonocleTimer
: 7 added, 1 deleted on 2020-07-21

**[OpenJFX](https://github.com/openjdk/jfx/pull/255)** ★
: QuantumRenderer modifies buffer in use by JavaFX Application Thread
: 26 added, 6 deleted on 2020-07-10

**[OpenJFX](https://github.com/openjdk/jfx/pull/257)**
: Get two bytes for the Linux input event type, not four
: 1 added, 1 deleted on 2020-07-02

**[OpenJFX](https://github.com/openjdk/jfx/pull/60)** ★
: Add support for e-paper displays on i.MX6 devices
: 236 added, 45 deleted on 2020-04-29

**[GitHub Archive Program](https://github.com/github/archive-program/pull/16)**
: Change .pdf file type to Portable Document Format
: 1 added, 1 deleted on 2020-02-03

### 2019

My efforts in 2018 to learn GitHub and the workings of the OpenJDK community were for one purpose: to add JavaFX support for e-paper displays in 2019.
I had been working on the feature in my spare time for years, so I was grateful to find the members of the OpenJFX project so helpful and welcoming.

**[NetBeans Website](https://github.com/apache/netbeans-website/pull/427)**
: Use KEYS for the link to KEYS
: 1 added, 1 deleted on 2019-11-04

**[NetBeans Website](https://github.com/apache/netbeans-website/pull/417)**
: Add Snap package to download page
: 1 added, 0 deleted on 2019-10-07

**[NetBeans Website](https://github.com/apache/netbeans-website/pull/416)**
: Add JAVA_HOME and ANT_HOME note
: 1 added, 0 deleted on 2019-10-07

**[NetBeans](https://github.com/apache/netbeans/pull/1554)**
: Add JAVA_HOME and ANT_HOME note
: 4 added, 2 deleted on 2019-10-07

**[Adoptium](https://github.com/adoptium/temurin-build/pull/1078)**
: Add Client VM to builds for Linux arm32 platform
: 1 added, 1 deleted on 2019-05-11

**[OpenJFX](https://github.com/javafxports/openjdk-jfx/pull/369)** ★
: Add support for e-paper displays
: 3,588 added, 2 deleted on 2019-04-16

### 2018

I got started with Git and GitHub in July 2018 by fixing some typographical errors in the Standard Ebooks edition of [*Flatland*](https://standardebooks.org/ebooks/edwin-a-abbott/flatland), by Edwin A. Abbott.
In October, I started to contribute in earnest by fixing an old pair of font bugs in the JDK and JavaFX.

**[JDK](https://github.com/jgneff/openjdk-freetype)** ★
: Need to set the FreeType LCD Filter to reduce fringing
: 3 added, 0 deleted on 2018-10-16 ([commit](https://github.com/openjdk/jdk/commit/0ed2c6c2957269d1342610b6d0382a2f8052f167))

**[OpenJFX](https://github.com/javafxports/openjdk-jfx/pull/235)**
: Fonts are blurry on Ubuntu 16.04 and Debian 9
: 1 added, 12 deleted on 2018-10-03

**[Standard Ebooks](https://github.com/standardebooks/edwin-a-abbott_flatland/pull/3)**
: Remove double occurrence of the word "we"
: 1 added, 1 deleted on 2018-08-04

**[Standard Ebooks](https://github.com/standardebooks/edwin-a-abbott_flatland/pull/2)**
: Fix typos
: 1 added, 1 deleted on 2018-07-31
