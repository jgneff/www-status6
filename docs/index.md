---
layout: default
title: Status Six Communications
description: Status Six Communications is the sole proprietorship of John Neffenger, an independent software developer in Vancouver BC.
---

## Welcome

I'm John Neffenger, an independent software developer doing business as *Status Six Communications* in Vancouver, British Columbia, Canada.

## Programming

My open-source contributions are described below, starting with the most recent.
My largest project has been to port JavaFX, the Java application framework, to devices with e-paper displays.
Before that, I learned how the OpenJDK community works by fixing two font bugs that had bothered me for years.

### JavaFX on E-paper

[![][doll]][epd-javafx]
While attending the SIGGRAPH conference in Vancouver, I was fascinated by an exhibit in the Art Gallery called [*Lineographs*][lineographs], by Joseph Farbrook.
It was the first time I had seen [animation][dancer] with electronic ink, and it was beautiful.
I was determined to reproduce the artwork on my own, but I soon discovered how difficult that would be.
The documentation was hard to find, buried deep in manuals for embedded programmers, and provided only a native C-language interface to the device driver.
I wanted to use a cross-platform language and framework that would let me test my applications on my desktop computer and run them unmodified on the device.
I wanted a framework like Java and JavaFX, Dart and Flutter, or Python and Qt, yet nothing like that existed.
Java and JavaFX, though, already had much of what I needed to make it work.

So I added a new platform for e-paper to JavaFX and contributed it to the OpenJDK project.
I submitted the changes in two parts, listed below, with a total of 1,831 new lines of code: 1,634 in Java and 197 in C.

* The first part implemented the JavaFX platform for Linux systems with e-paper displays, such as the Amazon Kindle and Rakuten Kobo e-readers.
See [Issue #339][openjdk-jfx-339] for details on the motivation and design of the new platform.
My contribution in [Pull Request #369][openjdk-jfx-369] is available since JavaFX 13.

* The second part added support for additional device models.
See [Issue #521][openjdk-jfx-521] for details.
I'm hopeful my contribution in [Pull Request #60][jfx-60] will be included in JavaFX 15.

### Java Font Fix

[![][jdkfonts]][openjdk-freetype]
For 10 years, every time I downloaded a new release of Java, the first thing I did was check whether the font bug had been fixed.
And for 10 years, the bug was still there: color fringes in the fonts so severe that it was impossible to use.
I was ready to abandon the platform altogether if it wasn't going to be fixed.
It was as if the developers of Java couldn't even see the bug.

In fact, that was precisely the problem: the developers of Java couldn't even see the bug!
The error didn't occur on their systems running Oracle Linux.
To solve the problem, I created a repository called "[OpenJDK Freetype Font Fix][openjdk-freetype]" that explained the long history of the bug and provided a two-line fix.
My fix is available in Java 12 or later and has been back-ported to Java versions 8 and 11.

### JavaFX Font Fix

[![][jfxfonts]][openjdk-jfx-229]
Before tackling the Java font bug, I started by looking into the same problem in JavaFX.
Reporting bugs about fonts is tricky!
With so many variations, from anti-aliasing and hinting to subpixel rendering and filtering, everyone's got an opinion.
The challenge is to convince developers that what you're describing is really a bug and not just a preference.
By 2017 there were already two bug reports explaining the problem, but they were both closed as "Not an Issue."
Worse yet, JavaFX, unlike Windows, renders its fonts without hinting, so the developers were used to receiving reports from users complaining about the difference.
By 2018 the bug had persisted for five years.
If yet another report was to be successful this time, it would have to include some compelling evidence---and probably a fix, too.

I created [Issue #229][openjdk-jfx-229] that provided both the evidence and the fix.
My fix in [Pull Request #235][openjdk-jfx-235] was merged into JavaFX within two days and is available in JavaFX 12 or later.
Because of a quirk in how this problem occurred, the developers of JavaFX also couldn't even see the bug!

## Typography

I took on these projects to find out whether I could automate the production of well-formatted books in plain text, HTML, EPUB, Kindle MOBI, and several PDF paper sizes, all from a single source written in LaTeX.
The results were even better than I had expected, thanks to the great open-source tools in LaTeX, HeVeA, ImageMagick, Potrace, and Inkscape.

### *Wild & Woolly*

[![][woolly]][play-woolly]
I designed the e-book versions of [*Wild & Woolly: A Journal Keeper's E-book*][play-woolly], by Alfred DePew, and automated the production of PDF files in A4, A5, and A6 paper sizes.
Click the *Free sample* button on the Google Play page to view a sample of the work.

### *The Melancholy of Departure*

[![][melancholy]][play-melancholy]
I designed the e-book versions of [*The Melancholy of Departure*][play-melancholy], by Alfred DePew, and automated the production of PDF, EPUB, and Kindle MOBI files.
Click the *Free sample* button on the Google Play page to view a sample of the work.

[epd-javafx]: https://github.com/jgneff/epd-javafx "JavaFX on E-Paper"
[lineographs]: http://s2014.siggraph.org/attendees/art-gallery/events/lineographs.html "Lineographs at SIGGRAPH 2014"
[dancer]: https://www.farbrook.net/lineographs/ "Dancer (with Micaela Gardner) by Joseph Farbrook"

[openjdk-jfx-339]: https://github.com/javafxports/openjdk-jfx/issues/339 "8217605: Add support for e-paper displays · Issue #339 · javafxports/openjdk-jfx"
[openjdk-jfx-369]: https://github.com/javafxports/openjdk-jfx/pull/369 "8217605: Add support for e-paper displays by jgneff · Pull Request #369 · javafxports/openjdk-jfx"
[openjdk-jfx-521]: https://github.com/javafxports/openjdk-jfx/issues/521 "8227425: Add support for e-paper displays on i.MX6 devices · Issue #521 · javafxports/openjdk-jfx"
[jfx-60]: https://github.com/openjdk/jfx/pull/60 "8227425: Add support for e-paper displays on i.MX6 devices by jgneff · Pull Request #60 · openjdk/jfx"

[openjdk-freetype]: https://github.com/jgneff/openjdk-freetype "jgneff/openjdk-freetype: OpenJDK FreeType Font Fix for Debian & Ubuntu"
[openjdk-jfx-229]: https://github.com/javafxports/openjdk-jfx/issues/229 "Reduce color fringes in FreeType subpixel rendering · Issue #229 · javafxports/openjdk-jfx"
[openjdk-jfx-235]: https://github.com/javafxports/openjdk-jfx/pull/235 "8188810: Fonts are blurry on Ubuntu 16.04 and Debian 9 by jgneff · Pull Request #235 · javafxports/openjdk-jfx"

[play-woolly]: https://play.google.com/store/books/details/Alfred_DePew_Wild_Woolly?id=8c3_AAAAQBAJ "&quot;Wild & Woolly&quot; on Google Play"
[play-melancholy]: https://play.google.com/store/books/details/Alfred_DePew_The_Melancholy_of_Departure?id=jc3_AAAAQBAJ "&quot;The Melancholy of Departure&quot; on Google Play"

[doll]: images/mechanical-doll.png "Screenshot of JavaFX animation on e-paper"
{:.right width="160" height="160"}
[jdkfonts]: images/jdkfonts.png "Screenshots of Java font fix (before and after)"
{:.right width="160" height="80"}
[jfxfonts]: images/jfxfonts.png "Screenshots of JavaFX font fix (before and after)"
{:.right width="160" height="80"}
[woolly]: images/wild-and-woolly.png "Thumbnail of &quot;Wild & Woolly&quot; book cover"
{:.left width="80" height="128"}
[melancholy]: images/melancholy-of-departure.png "Thumbnail of &quot;The Melancholy of Departure&quot; book cover"
{:.left width="80" height="113"}
