<div align="center">

![logo-url](https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Logo_Zeit_Online_2017.svg/692px-Logo_Zeit_Online_2017.svg.png)

# **icons from the design system of ZEIT ONLINE**

</div>

## Installing the icons

The icons are a set of svg files you can use to build your applications. All you need to do is install the `@zeitonline/icons` package:

```sh
$ yarn add @zeitonline/icons
# or
$ npm install --save @zeitonline/icons
```

## Recommendation

Since the package will receive updates, it is a good idea to create a script in your `package.json` that will allow you to copy the latest version into your current working directories. Just adapt the script to get to your `node_modules`.

```json
  "scripts": {
    ...
    "copy:zds": "cp node_modules/@zeitonline/icons/svg ./src/assets/svg"
  },
```

## Updates

Take a look at the [CHANGELOG.md](./CHANGELOG.md) to see what we've done in the latest updates, especially if there have been any major changes!

## Contact us

If you want to give us feedback about the design system, you can do so at [zon-frontend@zeit.de](mailto:zon-frontend@zeit.de).
