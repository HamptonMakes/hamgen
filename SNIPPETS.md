# MISC SNIPPETS
Stuff that might be useful to your life?

## Fibonnaci Sequence -- basis for font sizes
1 2 3 5 8 13 21 34 55 89 144

## MOBILE CODE SNIPPETS
### Mobile Media Queries
#### For the iPad
@media only screen and (max-device-width: 1024px)
@media only screen and (orientation: portrait)
@media only screen and (orientation: landscape)

### iPhone/iPod Touch/iPad Home screen Ican
#### 57x57 PNG Image
%link{:rel => 'apple-touch-icon', :href => '/'}

#### Act like a web app (no back button)
%meta{:name => 'apple-mobile-web-app-capable', :content => 'yes'}

#### Fixed viewport to 320x480 (on iPhone) and disables zooming
%meta{:name => 'viewport', :content => 'width=device-width; initial-scale=1.0; user-scalable=0'}

#### Other
%link{:rel => 'apple-touch-icon', :href => '/'}

%meta{:name => 'viewport', :content => 'width=device-width; initial-scale=1.0; user-scalable=0'}

%meta{:name => 'apple-mobile-web-app-capable', :content => 'yes'}

