# MISC SNIPPETS
**Stuff that might be useful to your life?**

## Fibonnaci Sequence -- basis for font sizes
1 2 3 5 8 13 21 34 55 89 144

## MOBILE CODE SNIPPETS

### iPhone/iPod Touch/iPad Home screen Icon
#### 57x57 PNG Image
- %link{:rel => 'apple-touch-icon', :href => '/'}

#### Act like a web app (no back button)
- %meta{:name => 'apple-mobile-web-app-capable', :content => 'yes'}

### Useful Media Queries

#### General Mobile Devices / Small Screen Size
- @media handheld and (max-width: 480px), screen and (max-device-width: 480px), screen and (max-width: 600px)

#### iPhone + iPod Touch Only
- @media only screen and (max-device-width: 480px)

#### iPad Only
- @media only screen and (min-device-width: 768px) and (max-device-width: 1024px)

#### iOS 4 Devices Only
- @media only screen and (-webkit-min-device-pixel-radio: 2)

#### Orientations
- @media only screen and (orientation: portrait)
- @media only screen and (orientation: landscape)
