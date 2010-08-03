# Shawn's Rails 3 Template
***

## Requirements
<table>
  <tr>
    <th>ruby</th>
    <td>&ge; 1.9.<em>x</em></td>
  </tr>
  <tr>
    <th>rails</th>
    <td>&ge; 3.0.0.beta3</td>
  </tr>
  <tr>
    <th>haml</th>
    <td>&ge; 3.0.12</td>
  </tr>
  <tr>
    <th>bundler</th>
    <td>&ge; 0.9.36</td>
  </tr>
  <tr>
    <th>colored</th>
    <td>&ge; 1.2</td>
  </tr>      
</table>

## Getting Started
Invoke the creation a new Rails application in the command line as normal, but add the **-m** flag followed by the path that points to the `init.rb` file 
located in this project.

## Internet Explorer Support

The defaults in this project _do not_ support anything below **IE8**. Instead, using conditional
comments, all javascript is removed and IE 7 and below are served with the [Universal IE CSS](http://code.google.com/p/universal-ie6-css/)
stylesheet. The content is readable and accessible in these browsers, but presented with a simpler style.

There is also meta information setup in `application.html.haml` to set IE8 to `edge` compatibility and also to check for _Google Chrome Frame_, if it exists.

## Sass

### Directory Structure
  * **/sass**
    * \_setup.sass **_(START HERE!)_**
    * \_variables.sass
    * \_application.sass (Where all @imports are linked.)
    * **/lib** (Default libraries.)
        * \_mixins.sass
        * \_reset.sass
        * **/media** (CSS Media Types.)
            * \_mobile.sass
            * \_print.sass
    * **/styles** (Place your project-specific Sass in this directory.)
       * \_common.sass (Reusable classes, tag redefinitions, etc.)
       * \_template.sass (Building blocks of the layout; header, footer, nav, etc.)



### Default Variables and Mixins in Sass

To make life a bit easier, the following **variables `$`** and **mixins `+`** have been included in the project.

#### Cross-browser Mixins

<table>
  <tr>
    <th align="left">name</th>
    <th align="left">function</th>
  </tr>
  <tr>
    <td>+transition(<code>string</code>)</td>
    <td>Create a CSS3 transition.</td>
  </tr>
  <tr>
    <td>+tranform(<code>string</code>)</td>
    <td>Create a CSS3 transformation.</td>
  </tr>
  <tr>
    <td>+box-shadow(<code>string</code>)</td>
    <td>Creates a drop shadow that works in modern browsers.</td>
  </tr>
  <tr>
    <td>+border-radius(<code>string</code>)</td>
    <td>
        Creates rounded corners that work in modern browsers.
        If you wish to target less than four corners, append the position to the mixin like so:
        <br>
        <code>+border-radius-top-left(10px)</code>
    </td>
  <tr>
    <td>+opacity(<code>integer</code>)</td>
    <td>Sets the opacity of an entire element.</td>
  </tr>
  </tr>
</table>

#### Custom Mixins
<table>
  <tr>
    <th align="left">name</th>
    <th align="left">function</th>
  </tr>
  <tr>
    <td>+h</td>
    <td><em>Hide Text</em> &mdash; If you wish to replace the text inside a tag with an image using CSS, this mixin will write the Sass needed to properly hide the content.</td>
  </tr>
  <tr>
    <td>+r</td>
    <td><em>Link Reset</em> &mdash; Resets borders and padding. Works in conjunction with +h if you're replacing text inside a link.</td>
  </tr>
  <tr>
    <td>+o</td>
    <td><em>Quick Outline</em> &mdash; For Debuggin: Quickly outline a tag.</td>
  </tr>

</table>

#### Font Stack Variables
<table>
  <tr>
    <th align="left">name</th>
    <th align="left">value</th>
  </tr>
  <tr>
    <td>$geneva</td>
    <td>geneva, tahoma, "dejavu sans condensed", sans-serif</td>
  </tr>
  <tr>
    <td>$helvetica</td>
    <td>"helvetica neue", helvetica, arial, freesans, "liberation sans", "numbus sans l", sans-serif</td>
  </tr>
  <tr>
    <td>$lucida</td>
    <td>"lucida grande", "lucida sans unicode", lucida sans, lucida, sans-serif</td>
  </tr>
  <tr>
    <td>$verdana </td>
    <td>verdana, "bitstream vera sans", "dejavu sans", "liberation sans", geneva, sans-serif</td>
  </tr>
  <tr>
    <td>$georgia </td>
    <td>georgia, "bitstream charter", "century schoolbook l", "liberation serif", times, serif</td>
  </tr>
  <tr>
    <td>$palatino </td>
    <td>palatino, "palatino linotype", palladio, "urw palladio l", "book antiqua", "liberation serif", times, serif</td>
  </tr>
  <tr>
    <td>$times </td>
    <td>times, "times new roman", "nimbus roman no9 l", freeserif, "liberation serif", serif</td>
  </tr>
  <tr>
    <td>$courier </td>
    <td>"courier new", courier, freemono, "nimbus mono l", "liberation mono", monospace</td>
  </tr>
  <tr>
    <td>$monaco </td>
    <td>monaco, "lucida console", "dejavu sans mono", "bitstream vera sans mono", "liberation mono", monospace</td>
  </tr>
</table>

#### Font Size Variables
<table>
  <tr>
    <th align="left">name</th>
    <th align="left">value</th>
  </tr>
  <tr>
    <td>$x-small</td>
    <td>9px</td>
  </tr>
   <tr>
    <td>$small</td>
    <td>11px</td>
  </tr>
   <tr>
    <td>$medium</td>
    <td>13px</td>
  </tr>
   <tr>
    <td>$x-medium</td>
    <td>17px</td>
  </tr>
   <tr>
    <td>$large</td>
    <td>21px</td>
  </tr>
   <tr>
    <td>$x-large</td>
    <td>34px</td>
  </tr>
  <tr>
    <td>$xx-large</td>
    <td>55px</td>
  </tr>
</table>
<br>

#### Sass Syntax

I have been using and writing Sass since its original inception. Thus you'll notice I use the original Sass syntax and not the newer SCSS implementation.

I am not a fan of the SCSS style and will never be converting this project to it. If you'd prefer the SCSS style of writing your Sass, it should be easy enough to
fork this project and convert the formatting styles. Check the [SASS Documentation](http://sass-lang.com/docs/yardoc/file.SASS_REFERENCE.html) for more.

I also prefer prefixing the `:` to the _start_ of the attribute selector as opposed to the more CSS/SCSS syntax of the colon being the suffix.
This is just me being set in my ways and, in all honesty, doesn't effect the end-user functionality of the project if you choose to do otherwise.

<br><br>
If you have questions or concerns, feel free to give me a shout at:
[shawn@yayinternets.com](mailto:shawn@yayinternets.com)