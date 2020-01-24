---
layout: default
description: Status Six Communications is the sole proprietorship of John Neffenger, a software developer in Vancouver BC.
---

I'm John Neffenger, an open-source software developer doing business as **Status Six Communications** in Vancouver, British Columbia, Canada.

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

So I added the support to JavaFX with 1,831 lines of code in all (1,634 in Java and 197 in C).

**Jan 2019:**
Implemented the JavaFX platform for Linux systems with e-paper displays, such as the Amazon Kindle and Rakuten Kobo e-readers.
See my GitHub issue, "[Add support for e-paper displays][JDK-8217605]," for details on the motivation and design of the new platform.
This feature is available since JavaFX 13.

**Jul 2019:**
Added support for additional device models.
See my GitHub issue, "[Add support for e-paper displays on i.MX6 devices][JDK-8227425]," for details.
I'm hopeful this feature will be included in JavaFX 15.

### Java Font Fix

[![][jdkfonts]][JDK-8212071]
For 10 years, every time I downloaded a new release of Java, the first thing I did was check whether the font bug had been fixed.
And for 10 years, the bug was still there: color fringes in the fonts so severe that it was impossible to use.
I was ready to abandon the platform altogether if the problem wasn't going to be fixed.
It was as if the developers of Java couldn't even see the bug.

**Oct 2018:**
In fact, that was precisely the problem: the developers of Java couldn't even see the bug!
The error didn't occur on their systems running Oracle Linux.
I solved the problem by creating the GitHub repository "[OpenJDK FreeType Font Fix][JDK-8212071]," explaining the long history of the bug and providing a two-line fix.
My fix is available in Java 12 or later and has been back-ported to Java versions 8 and 11.

### JavaFX Font Fix

[![][jfxfonts]][JDK-8188810]
Before tackling the Java font bug, I started by looking into the same problem in JavaFX, but reporting bugs about fonts is tricky!
With so many variations, from anti-aliasing and hinting to subpixel rendering and filtering, everyone's got an opinion.
The challenge is to convince developers that what you're describing is really a bug and not just a preference.
By 2017 there were already two bug reports explaining the problem, but they both were closed as "Not an Issue."
Worse yet, JavaFX, unlike Windows, renders its fonts without hinting, so the developers were used to receiving bug reports from users complaining about the difference.
By 2018 the bug had persisted for five years, so to be successful, yet another report would require some compelling evidence---and probably a fix, too.

**Sep 2018:**
I provided both in my GitHub issue, "[Reduce color fringes in FreeType subpixel rendering][JDK-8188810]."
My fix was merged into JavaFX within two days and is available in JavaFX 12 or later.
Just like the Java font bug, because of a quirk in how this problem occurred, the developers of JavaFX couldn't even see the bug either!

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
[JDK-8217605]: https://github.com/javafxports/openjdk-jfx/issues/339 "JDK-8217605"
[JDK-8227425]: https://github.com/javafxports/openjdk-jfx/issues/521 "JDK-8227425"
[JDK-8212071]: https://github.com/jgneff/openjdk-freetype "JDK-8212071"
[JDK-8188810]: https://github.com/javafxports/openjdk-jfx/issues/229 "JDK-8188810"
[play-woolly]: https://play.google.com/store/books/details/Alfred_DePew_Wild_Woolly?id=8c3_AAAAQBAJ "&ldquo;Wild &amp; Woolly&rdquo; on Google Play"
[play-melancholy]: https://play.google.com/store/books/details/Alfred_DePew_The_Melancholy_of_Departure?id=jc3_AAAAQBAJ "&ldquo;The Melancholy of Departure&rdquo; on Google Play"

[doll]: images/mechanical-doll.png "Screenshot of JavaFX animation on e-paper"
{:.right width="160" height="160"}
[jdkfonts]: images/jdkfonts.png "Screenshots of Java font fix (before and after)"
{:.right width="160" height="80"}
[jfxfonts]: images/jfxfonts.png "Screenshots of JavaFX font fix (before and after)"
{:.right width="160" height="80"}
[woolly]: images/wild-and-woolly.png "Thumbnail of &ldquo;Wild &amp; Woolly&rdquo; book cover"
{:.left width="80" height="128"}
[melancholy]: images/melancholy-of-departure.png "Thumbnail of &ldquo;The Melancholy of Departure&rdquo; book cover"
{:.left width="80" height="113"}
