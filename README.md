# Hampton's Shawn's Rails 3 Generator
***

## Requirements
<table>
  <tr>
    <th>ruby</th>
    <td>&ge; 1.9.2</td>
  </tr>
  <tr>
    <th>rails</th>
    <td>&ge; 3.0.0</td>
  </tr>
  <tr>
    <th>haml</th>
    <td>&ge; 3.0.18</td>
  </tr>
  <tr>
    <th>bundler</th>
    <td>&ge; 0.9.26</td>
  </tr>
  <tr>
    <th>colored</th>
    <td>&ge; 1.2</td>
  </tr>
</table>

## Getting Started

Install the gem with "gem install hamgen" then run "hamgen #{app_name}" which app_name is your app name... duh!

Then it builds something *I* like.

## Internet Explorer Support

The defaults in this project _do not_ support anything below **IE8**. Instead, using conditional
comments, all javascript is removed and IE 7 and below are served with the [Universal IE CSS](http://code.google.com/p/universal-ie6-css/)
stylesheet. The content is readable and accessible in these browsers, but presented with a simpler style.

There is also meta information setup in `application.html.haml` to set IE8 to `edge` compatibility and also to check for _Google Chrome Frame_,
if it exists.

## Sass

### Directory Structure
  * **/sass**
    * \_setup.sass **_(START HERE!)_**
    * application.sass (Where all @imports are linked.)
    * **/lib** (Default libraries. Basically, don't touch these!)
        * \_extend.sass
        * \_mixins.sass
        * \_reset.sass
        * \_variables.sass
    * **/styles** (Place your project-specific Sass in these files.)
       * \_common.sass
       * \_extend.sass
       * \_mixins.sass
       * \_template.sass
       * \_variables.sass


### Default Variables and Mixins in Sass

The following **variables `$`** and **mixins `+`** have been included in the project's Sass `lib` directory.

#### Cross-browser Mixins

<table>
  <tr>
    <th align="left">name</th>
    <th align="left">function</th>
  </tr>

  <tr>
    <td>+border-radius(<code>string</code>)</td>
    <td>
      Creates rounded corners that work in modern browsers.
      If you wish to target less than four corners, append the position to the mixin like so:
      <br>
      <code>+border-radius-top-left(10px)</code>
    </td>
  </tr>

  <tr>
    <td>+box-shadow(<code>string</code>)</td>
    <td>Creates a drop shadow that works in modern browsers.</td>
  </tr>

  <tr>
    <td>+column-count(<code>string</code>)</td>
    <td>Sets the number of CSS3-style columns.</td>
  </tr>

  <tr>
    <td>+column-gap(<code>string</code>)</td>
    <td>Sets the size of the gaps between CSS3-style columns.</td>
  </tr>

  <tr>
    <td>+columns(<code>count string</code>, <code>gap string</code>)</td>
    <td>Sets both column -count and -gap in one mixin.</td>
  </tr>

  <tr>
    <td>+opacity(<code>integer</code>)</td>
    <td>Sets the opacity of an entire element.</td>
  </tr>

  <tr>
    <td>+tranform(<code>string</code>)</td>
    <td>Create a CSS3 transformation.</td>
  </tr>

  <tr>
    <td>+transition(<code>string</code>)</td>
    <td>Create a CSS3 transition.</td>
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
  <tr>
    <td>$huge</td>
    <td>72px</td>
  </tr>
  <tr>
    <td>$x-huge</td>
    <td>89px</td>
  </tr>
</table>

#### `@extend` Classes
There are a number of classes contained in `lib/_extend.sass` that can be used in conjunction with the Sass `@extend` function. Please
see that file for what's included.


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
