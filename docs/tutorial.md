# Tutorial

- Dokutyp nach Diátaxis [Tutorial](glossary.md#tutorial)
- z.B. "Zope the missing manual"

## Markdown: Syntax

Siehe auch:

- <https://squidfunk.github.io/mkdocs-material/reference/>
- <https://daringfireball.net/projects/markdown/syntax>

* * *

### Inline HTML

Beispiel HTML Tabelle:

=== "Markdown"
        This is a regular paragraph.

        <table>
        <tr>
            <th>Contact</th>
            <th>Country</th>
        </tr>
        <tr>
            <td>Maria Anders</td>
            <td>Germany</td>
        </tr>
        <tr>
            <td>Francisco Chang</td>
            <td>Mexico</td>
        </tr>
        </table>

        This is another regular paragraph.
=== "Rendered"
    This is a regular paragraph.

    <table>
    <tr>
        <th>Contact</th>
        <th>Country</th>
    </tr>
    <tr>
        <td>Maria Anders</td>
        <td>Germany</td>
    </tr>
    <tr>
        <td>Francisco Chang</td>
        <td>Mexico</td>
    </tr>
    </table>

    This is another regular paragraph.


* * *


### Headers

    # This is an H1

    ## This is an H2

    ###### This is an H6


### Blockquotes

=== "Markdown"

        > This is a blockquote with two paragraphs. Lorem ipsum dolor sit amet,
        > consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.
        > Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.
        > 
        > Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse
        > id sem consectetuer libero luctus adipiscing.

=== "Rendered"

    > This is a blockquote with two paragraphs. Lorem ipsum dolor sit amet,
    > consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.
    > Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.
    > 
    > Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse
    > id sem consectetuer libero luctus adipiscing.

Lazy:

=== "Markdown"

        > This is a blockquote with two paragraphs. Lorem ipsum dolor sit amet,
        consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.
        Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.

        > Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse
        id sem consectetuer libero luctus adipiscing.

=== "Rendered"

    > This is a blockquote with two paragraphs. Lorem ipsum dolor sit amet,
    consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.
    Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.

    > Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse
    id sem consectetuer libero luctus adipiscing.

Nested:

=== "Markdown"

        > This is the first level of quoting.
        >
        > > This is nested blockquote.
        >
        > Back to the first level.

=== "Rendered"

    > This is the first level of quoting.
    >
    > > This is nested blockquote.
    >
    > Back to the first level.

Complex:

=== "Markdown"

        > **This is a bold.**
        > 
        > 1.   This is the first list item.
        > 2.   This is the second list item.
        > 
        > Here's some example code:
        > 
        >     return shell_exec("echo $input | $markdown_script");

=== "Rendered"

    > **This is a bold.**
    > 
    > 1.   This is the first list item.
    > 2.   This is the second list item.
    > 
    > Here's some example code:
    > 
    >     return shell_exec("echo $input | $markdown_script");



### Lists

#### Unordered

=== "Markdown"

        -   Red
        -   Green
        -   Blue

=== "Rendered"

    -   Red
    -   Green
    -   Blue

!!! info

    `-`, `+` und `*` funktionieren

#### Ordered

=== "Markdown"

        1.  Bird
        1.  McHale
        1.  Parish

=== "Rendered"

    1.  Bird
    1.  McHale
    1.  Parish

!!! info

    Die Nummerierung spielt keine Rolle, ob 1. 2. 3. oder 8. 2. 1., hauptsache eine Zahl

Hanging indents:

=== "Markdown"

        1.  This is a list item with two paragraphs. Lorem ipsum dolor
            sit amet, consectetuer adipiscing elit. Aliquam hendrerit
            mi posuere lectus.

            Vestibulum enim wisi, viverra nec, fringilla in, laoreet
            vitae, risus. Donec sit amet nisl. Aliquam semper ipsum
            sit amet velit.

        2.  Suspendisse id sem consectetuer libero luctus adipiscing.
        3.  Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
            Aliquam hendrerit mi posuere lectus. Vestibulum enim wisi,
            viverra nec, fringilla in, laoreet vitae, risus.
        4.  Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
        Suspendisse id sem consectetuer libero luctus adipiscing.


=== "Rendered"

    1.  This is a list item with two paragraphs. Lorem ipsum dolor
        sit amet, consectetuer adipiscing elit. Aliquam hendrerit
        mi posuere lectus.

        Vestibulum enim wisi, viverra nec, fringilla in, laoreet
        vitae, risus. Donec sit amet nisl. Aliquam semper ipsum
        sit amet velit.

    2.  Suspendisse id sem consectetuer libero luctus adipiscing.
    3.  Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
        Aliquam hendrerit mi posuere lectus. Vestibulum enim wisi,
        viverra nec, fringilla in, laoreet vitae, risus.
    4.  Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
    Suspendisse id sem consectetuer libero luctus adipiscing.

!!! info

    Eine Leerzeile zwischen den Elementen fügt Paragraphen hinzu:

        *   Bird
        *   Magic

    wird zu:

        <ul>
        <li>Bird</li>
        <li>Magic</li>
        </ul>

    Mit Leerzeile

        *   Bird

        *   Magic

    wird daraus:

        <ul>
        <li><p>Bird</p></li>
        <li><p>Magic</p></li>
        </ul>


### Code Blocks

=== "Markdown"

        This is a normal paragraph:

            This is a code block.

=== "Rendered"

    This is a normal paragraph:

        This is a code block.

HTML Tags werden gerendert

=== "Markdown"

        <div class="footer">
            &copy; 2004 Foo Corporation
        </div>

=== "Rendered"

    <div class="footer">
        &copy; 2004 Foo Corporation
    </div>


### Horizontal Rules

=== "Markdown"

        Before
        * * *
        After

=== "Rendered"

    Before
    * * *
    After

### Links

#### Inline Links

=== "Markdown"

        This is [an example](http://example.com/ "Title") inline link.

        [This link](http://example.net/) has no title attribute.

=== "Rendered"

    This is [an example](http://example.com/ "Title") inline link.

    [This link](http://example.net/) has no title attribute.

#### Lokale Ressourcen referenzieren

=== "Markdown"

        See my [Onboarding](onboarding) page for details.

=== "Rendered"

    See my [Onboarding](onboarding.md) page for details.

#### Kapitel referenzieren

=== "Markdown"

        See my [Images](#images) page for details.

=== "Rendered"

    See my [Images](#images) page for details.

#### Reference style

=== "Markdown"

        This is [an example][id] reference-style link.

        [id]: http://example.com/  "Optional Title Here"

=== "Rendered"

    This is [an example][id] reference-style link.

    [id]: http://example.com/  "Optional Title Here"

#### Einfache Links

=== "Markdown"

        See my <https://www.zeit.de> for details.

=== "Rendered"

    See my <https://www.zeit.de> for details.

### Emphasis

=== "Markdown"

        *single asterisks*

        _single underscores_

        **double asterisks**

        __double underscores__

=== "Rendered"

    *single asterisks*

    _single underscores_

    **double asterisks**

    __double underscores__


### Code

=== "Markdown"

        ``` py title="bubble_sort.py"
        def bubble_sort(items):
            for i in range(len(items)):
                for j in range(len(items) - 1 - i):
                    if items[j] > items[j + 1]:
                        items[j], items[j + 1] = items[j + 1], items[j]
        ```

=== "Rendered"

    ``` py title="bubble_sort.py"
    def bubble_sort(items):
        for i in range(len(items)):
            for j in range(len(items) - 1 - i):
                if items[j] > items[j + 1]:
                    items[j], items[j + 1] = items[j + 1], items[j]
    ```

### Images


    ![Alt text](/path/to/img.jpg)

    ![Alt text](/path/to/img.jpg "Optional title")
