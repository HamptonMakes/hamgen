# Shawn's Rails 3 Template
***

You need the following RubyGems at these *minimum* versions:

  * `rails` **3.0.0.beta3**
  * `haml` **3.0.12**
  * `bundler` **0.9.26**
  * `colored` **1.2**
    
_Ruby 1.9.x is probably the way to go, as well._  

## Getting Started

  1. To begin, make sure the `shawns-rails3-template` directory is in the parent directory where you're creating your new project.

  2. Run `rails {app} -m ./shawns-rails3-template/init.rb` &mdash; where _{app}_ is the name you wish to give your project.
    
     > Rails will then setup as normal, with the final step loading the `init.rb` which applies the template files to the new project.
  
  If you run this on a previously existing Rails app, you'll be prompted if you want to overwrite various files. In each instance, type `n` for No.

## Internet Explorer Support

The defaults in this project _do not_ support anything below **IE7**. Instead, using conditional
comments, all javascript is removed and IE 6 and below are served with the [Universal IE6 CSS](http://code.google.com/p/universal-ie6-css/)
stylesheet. The content is readable and accessible in these browsers, but presented with a simpler style.

If you wish to do any further over rides to this base CSS, you can do so in the `ie6.sass` file located in the root of the `/sass` directory.

IE 7 and 8 also gain the addition of the [ie7-js library](http://code.google.com/p/ie7-js/), which helps implement some of the more advanced CSS selectors.
See that site for more information and examples.

There is also meta information setup in `application.html.haml` to set IE8 to `edge` compatibility and also to check for _Google Chrome Frame_, if it exists.

## Sass

### Directory Structure
  * **/sass**
    * \_\*setup.sass **_(START HERE!)_**
    * \_variables.sass
    * \_application.sass (Where all @imports are linked.)
    * ie6.sass (If you want to add over rides to the IE CSS reset.)
    * **/lib** (Default libraries.)
        * \_debug.sass
        * \_mixins.sass
        * \_reset.sass
        * **/media** (CSS Media Types.)
            * \_mobile.sass
            * \_print.sass
    * **/style** (Place your project-specific Sass in this directory.)
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

#### Debug Mixins

<table>
  <tr>
    <th align="left">name</th>
    <th align="left">function</th>
  </tr>
  <tr>
    <td>+g</td>
    <td><em>Grid</em> &mdash; Set element background to 10px by 10px grid.</td>
  </tr>
  <tr>
    <td>+c</td>
    <td><em>Columns</em> &mdash; Set element background to typographic columns (16 rows.)</td>
  </tr>
  <tr>
    <td>+o</td>
    <td><em>Quick Outline</em> &mdash; Quickly outline a tag.</td>
  </tr>
  <tr>
    <td>+n</td>
    <td><em>Nested Outlines</em> &mdash; Do a cascading series of outlines around elements by hierarchy.</td>
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

I am not a fan of the SCSS style and will never be converting this project to it. If you'd prefer the SCSS style of writing your Sass, I suggest you
fork this project and run: `$ sass-convert --recursive --from sass2 --to scss src/stylesheets/`

I also prefer prefixing the `:` to the _start_ of the attribute selector as opposed to the more CSS/SCSS syntax of the colon being the suffix.
This is just me being set in my ways and, in all honesty, doesn't effect the end-user functionality of the project if you choose to do otherwise.

<br><br>
If you have questions or concerns, feel free to give me a shout at:
[shawn@yayinternets.com](mailto:shawn@yayinternets.com)