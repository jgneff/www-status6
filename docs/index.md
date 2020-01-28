---
layout: default
title: John Neffenger
description: Status Six Communications is the sole proprietorship of John Neffenger, an independent software developer in Vancouver BC.
---

## Welcome

I'm John Neffenger, an independent software developer doing business as *Status Six Communications* in Vancouver, British Columbia, Canada.

## Programming

My open-source contributions are listed below, starting with the most recent.
My largest project has been to port JavaFX, the Java application framework, to devices with e-paper displays.
Before submitting that contribution, I learned how the OpenJDK community works by fixing two font bugs that had bothered me for years.

### JavaFX on E-paper

[![][doll]][epd-javafx]
While attending the SIGGRAPH conference in Vancouver, I was fascinated by an exhibit in the Art Gallery called [*Lineographs*][lineographs], by Joseph Farbrook.
It was the first time I had seen [animation][dancer] with electronic ink, and it was beautiful.
I was determined to reproduce the artwork on my own, but I soon discovered how difficult that would be.
The documentation was hard to find, buried deep in manuals for embedded programmers, and it provided only a native C-language interface to the device driver.
I wanted to use a cross-platform language and framework that would let me test applications on my desktop computer and run them unmodified on the device.
I wanted a framework like Java and JavaFX, Dart and Flutter, or Python and Qt, yet nothing like that existed.

So I added the support to JavaFX and contributed the code in two parts, listed below.
My contribution was a total of 1,831 lines of code: 1,634 in Java and 197 in C.

**Feb 2019:**
Implemented the JavaFX platform for Linux systems with e-paper displays, such as the Amazon Kindle and Rakuten Kobo e-readers.
See my [GitHub issue][openjdk-jfx-339] for details on the motivation and design of the new platform.
[This feature][openjdk-jfx-369] is available since JavaFX 13.

**Dec 2019:**
Added support for additional device models.
See my [GitHub issue][openjdk-jfx-521] for details.
I'm hopeful [this feature][jfx-60] will be included in JavaFX 15.

### Java Font Fix

[![][jdkfonts]][openjdk-freetype]
For 10 years, every time I downloaded a new release of Java, the first thing I did was check whether the font bug had been fixed.
And for 10 years, the bug was still there: color fringes in the fonts so severe that it was impossible to use.
I was ready to abandon the platform altogether if the problem wasn't going to be fixed.
It was as if the developers of Java couldn't even see the bug.

**Oct 2018:**
In fact, that was precisely the problem: the developers of Java couldn't even see the bug!
The error didn't occur on their systems running Oracle Linux.
I solved the problem by creating a [GitHub repository][openjdk-freetype] explaining the long history of the bug and providing a two-line fix.
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

**Sep 2018:**
I created a [GitHub issue][openjdk-jfx-229] that provided both.
[My fix][openjdk-jfx-235] was merged into JavaFX within two days and is available in JavaFX 12 or later.
Because of a quirk in how this problem occurred, the developers of JavaFX also couldn't even see the bug!

## Typography

I took on these projects to find out whether I could automate the production of well-formatted books in plain text, HTML, EPUB, Kindle MOBI, and several PDF paper sizes, all from a single source written in LaTeX.
The results were even better than I had expected, thanks to the great open-source tools in LaTeX, HeVeA, ImageMagick, Potrace, and Inkscape.

### *Wild & Woolly*

[![][woolly]][play-woolly]
**Sep 2013:**
Designed the e-book versions of [*Wild & Woolly: A Journal Keeper's E-book*][play-woolly], by Alfred DePew, and automated the production of PDF files in A4, A5, and A6 paper sizes.
Click the *Free sample* button on the Google Play page to view a sample of the work.

### *The Melancholy of Departure*

[![][melancholy]][play-melancholy]
**Aug 2013:**
Designed the e-book versions of [*The Melancholy of Departure*][play-melancholy], by Alfred DePew, and automated the production of PDF, EPUB, and Kindle MOBI files.
Click the *Free sample* button on the Google Play page to view a sample of the work.

[epd-javafx]: https://github.com/jgneff/epd-javafx "JavaFX on E-Paper"
[lineographs]: http://s2014.siggraph.org/attendees/art-gallery/events/lineographs.html "Lineographs at SIGGRAPH 2014"
[dancer]: https://www.farbrook.net/lineographs/ "Dancer (with Micaela Gardner) by Joseph Farbrook"

[openjdk-jfx-339]: https://github.com/javafxports/openjdk-jfx/issues/339 "Issue #339, &quot;8217605: Add support for e-paper displays&quot;"
[openjdk-jfx-369]: https://github.com/javafxports/openjdk-jfx/pull/369 "Pull request #369, &quot;8217605: Add support for e-paper displays&quot;"
[openjdk-jfx-521]: https://github.com/javafxports/openjdk-jfx/issues/521 "Issue #521, &quot;8227425: Add support for e-paper displays on i.MX6 devices&quot;"
[jfx-60]: https://github.com/openjdk/jfx/pull/60 "Pull request #60, &quot;8227425: Add support for e-paper displays on i.MX6 devices&quot;"

[openjdk-freetype]: https://github.com/jgneff/openjdk-freetype "OpenJDK FreeType Font Fix"
[openjdk-jfx-229]: https://github.com/javafxports/openjdk-jfx/issues/229 "Issue #229, &quot;8188810: Reduce color fringes in FreeType subpixel rendering&quot;"
[openjdk-jfx-235]: https://github.com/javafxports/openjdk-jfx/pull/235 "Pull request #235, &quot;8188810: Fonts are blurry on Ubuntu 16.04 and Debian 9&quot;"

[play-woolly]: https://play.google.com/store/books/details/Alfred_DePew_Wild_Woolly?id=8c3_AAAAQBAJ "&quot;Wild &amp; Woolly&quot; on Google Play"
[play-melancholy]: https://play.google.com/store/books/details/Alfred_DePew_The_Melancholy_of_Departure?id=jc3_AAAAQBAJ "&quot;The Melancholy of Departure&quot; on Google Play"

[doll]: images/mechanical-doll.png "Screenshot of JavaFX animation on e-paper"
{:.right width="160" height="160"}
[jdkfonts]: images/jdkfonts.png "Screenshots of Java font fix (before and after)"
{:.right width="160" height="80"}
[jfxfonts]: images/jfxfonts.png "Screenshots of JavaFX font fix (before and after)"
{:.right width="160" height="80"}
[woolly]: images/wild-and-woolly.png "Thumbnail of &quot;Wild &amp; Woolly&quot; book cover"
{:.left width="80" height="128"}
[melancholy]: images/melancholy-of-departure.png "Thumbnail of &quot;The Melancholy of Departure&quot; book cover"
{:.left width="80" height="113"}
