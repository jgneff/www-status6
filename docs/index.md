---
layout: default
title: John Neffenger
description: An independent software developer in Vancouver BC.
---

# Welcome

I'm John Neffenger, an independent software developer in Vancouver, British Columbia, Canada.

## Programming

My main [contributions](contributions.html) are listed below and described in the sections that follow.

**2023**
: Helped enable reproducible builds of the Java Development Kit and JavaFX.

**2022**
: Created strictly-confined packages of Apache Maven and Apache NetBeans.

**2021**
: Published current releases and early-access builds of the JDK and JavaFX.

**2020**
: Released the VOLANO chat server under the GPLv3 open-source license.

**2019**
: Ported the JavaFX application framework to devices with e-paper displays.

**2018**
: Learned how to contribute to the OpenJDK community by fixing two font bugs.

### Snap Store

![OpenJDK: Current JDK release & early-access builds](images/openjdk2.svg){:.right width="384" height="192"}
In December 2020, I started publishing the current releases of [OpenJDK][openjdk-snap] (Java) and [OpenJFX][openjfx-snap] (JavaFX) when I noticed that they were [not available][openjdk-question] in any current release of Ubuntu.
I had been building both projects for years as part of my testing, but the Snap packages allowed me to document the process and create up-to-date builds for myself and anyone else who wants them.

In June 2022, I also started publishing strictly-confined packages of [Apache Maven][maven-snap] and [Apache NetBeans][netbeans-snap].
The packages are public, but unlisted, to avoid confusion with the official releases from Apache.
They allow me to run my entire toolchain, consisting of the Java Development Kit, Apache Maven, and Apache NetBeans, inside a strictly-confined container with limited access to my system.
Such confinement is especially important for tools like Maven and NetBeans that download, install, and run third-party plugins, and it also protects my system from the dependencies they include in their builds.

### VOLANO Chat Server

![VOLANO speech-balloon logo](images/volano.svg){:.right width="320" height="192"}
I wrote much of the VOLANO chat server and applets in the spring of 1996.
In the decade that followed, the software became frozen in time at Java version 1.1 mostly due to the dominance of Internet Explorer and its [Microsoft Java Virtual Machine][msjvm].
In the decade after that, it remained frozen in time mostly due to me.
Now, more than two decades after launching the proprietary software, I hope to breathe some life back into it as an [open-source project][volano].

### JavaFX on E-paper

![Still frame of JavaFX animation on e-paper](images/mechanical-doll-1x.png){:.right width="320" height="180" srcset="images/mechanical-doll-2x.png 2x"}
While attending the SIGGRAPH conference in Vancouver, I was fascinated by an exhibit in the Art Gallery called [*Lineographs*][lineographs], by Joseph Farbrook.
It was the first time I had seen [animation in electronic ink][dancer].
After the conference, I was determined to reproduce the artwork on my own, but I soon learned how difficult that would be.
The documentation was hard to find and provided only a C-language interface to the device driver.
I wanted to use a cross-platform language and framework that would let me test my applications on a desktop computer and run them unmodified on the device.
I was looking for a framework like Java and JavaFX, Dart and Flutter, or Python and Qt, but none of them supported embedded devices with e-paper displays.
JavaFX, though, already had much of what I needed to make it work.

So I added the support to JavaFX and contributed the code to the OpenJFX project.
I submitted the code in two parts, with 1,831 new lines of code in all.
The first part, included in JavaFX 13, added a new platform for Linux systems with e-paper displays.
See [Issue #339][jfx-339] for details on the motivation and design of the new platform and [Pull Request #369][jfx-369] for the implementation.
The second part, included in JavaFX 15, added support for additional device models.
See [Issue #521][jfx-521] for details and [Pull Request #60][jfx-60] for the implementation.
I also published a [JavaFX application][epd-javafx] to test the new platform.

### Java Font Fix

![Screenshot of Java font bug](images/font-bug-java-1x.png){:.right .darkmode width="320" height="60" srcset="images/font-bug-java-2x.png 2x"}
For 10 years, each time I downloaded a new release of Java, I immediately checked whether the font bug had been fixed.
And for 10 years, each time I checked, the bug was still there: color fringes so severe that it was impossible to use.
I came to the conclusion that I needed to fix the problem myself or abandon the Java platform altogether.

I created the repository [OpenJDK FreeType Font Fix][openjdk-freetype] to explain the long and convoluted history of the bug and provide a two-line fix.
The fix is available in Java 12 or later and has been back-ported to the Java 8 and Java 11 Long Term Support releases.
I am happily still using Java today.

### JavaFX Font Fix

![Screenshot of JavaFX font bug](images/font-bug-javafx-1x.png){:.right .darkmode width="320" height="60" srcset="images/font-bug-javafx-2x.png 2x"}
Before trying to fix the Java font bug, I started with the same bug in JavaFX.
Reporting bugs about fonts can be particularly challenging.
It's difficult to convince developers that what you see is a bug rather than a personal preference.
By 2017, there were already two bug reports explaining the problem, but both of them had been closed as "Not an Issue."
By 2018, the bug had persisted for five years.
If I wanted to open yet another bug report, it was going to require some compelling evidence---and probably a fix, too.

I created [Issue #229][jfx-229] to provide both the evidence and the fix, and my [Pull Request #235][jfx-235] was merged into JavaFX in just one day.
The fix is available in JavaFX 12 or later.

## Typography

I took on these projects to see whether I could automate the production of well-formatted books in plain text, HTML, EPUB, MOBI, and several PDF paper sizes, all from a single source.
The projects were a success thanks to the open-source tools available in LaTeX, HeVeA, ImageMagick, Potrace, and Inkscape.

### *Wild & Woolly*

![Wild & Woolly book cover](images/wild-and-woolly-1x.png){:.left width="135" height="192" srcset="images/wild-and-woolly-2x.png 2x"}
I designed the e-book versions of [*Wild & Woolly: A Journal Keeper's E-book*][play-woolly], by Alfred DePew, and automated the production of PDF files in A4, A5, and A6 paper sizes.
Click the *Free sample* button on the Google Play page to view a sample of the work.

### *The Melancholy of Departure*

![The Melancholy of Departure book cover](images/melancholy-of-departure-1x.png){:.left width="135" height="192" srcset="images/melancholy-of-departure-2x.png 2x"}
I designed the e-book versions of [*The Melancholy of Departure*][play-melancholy], by Alfred DePew, and automated the production of PDF, EPUB, and Kindle MOBI files.
Click the *Free sample* button on the Google Play page to view a sample of the work.

[openjdk-question]: https://answers.launchpad.net/ubuntu/+source/openjdk-15/+question/693547
[openjdk-snap]: https://snapcraft.io/openjdk
[openjfx-snap]: https://snapcraft.io/openjfx
[maven-snap]: https://snapcraft.io/strictly-maven
[netbeans-snap]: https://snapcraft.io/strictly-netbeans

[msjvm]: https://en.wikipedia.org/wiki/Microsoft_Java_Virtual_Machine
[volano]: https://github.com/jgneff/volano

[lineographs]: http://s2014.siggraph.org/attendees/art-gallery/events/lineographs.html
[dancer]: https://www.farbrook.net/lineographs/
[jfx-339]: https://github.com/javafxports/openjdk-jfx/issues/339
[jfx-369]: https://github.com/javafxports/openjdk-jfx/pull/369
[jfx-521]: https://github.com/javafxports/openjdk-jfx/issues/521
[jfx-60]: https://github.com/openjdk/jfx/pull/60
[epd-javafx]: https://github.com/jgneff/epd-javafx

[openjdk-freetype]: https://github.com/jgneff/openjdk-freetype

[jfx-229]: https://github.com/javafxports/openjdk-jfx/issues/229
[jfx-235]: https://github.com/javafxports/openjdk-jfx/pull/235

[play-woolly]: https://play.google.com/store/books/details/Alfred_DePew_Wild_Woolly?id=8c3_AAAAQBAJ
[play-melancholy]: https://play.google.com/store/books/details/Alfred_DePew_The_Melancholy_of_Departure?id=jc3_AAAAQBAJ
