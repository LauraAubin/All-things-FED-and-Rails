# Markdown:

You can view the markdown of a file in Atom by typing: `control + shift + m`.

<kbd>Borders</kbd>

>Quotes

```Block```

<sup>Small text<sup>

<details>
<summary>Expandable text</summary>

* [`Content 1`](#content)
* [`Content 2`](#content)
</details>

<br>

| Tables        | Are           | Cool  |
| ------------- |:-------------:| -----:|
|        1      |       2       |   3   |
|        4      |       5       |   6   |

<hr>

**Set width/height of images:**

```
<img src="image_url" width="400" height="150" />
```

<kbd><img src="https://user-images.githubusercontent.com/22782157/28597052-d5af62ae-7169-11e7-9368-00ac8aac281c.jpg" width="400" height="150" /></kbd>

<hr>

Use specific code block types with ```ruby

```ruby
class foo
   def bar
   end
end

```

Color squares:

```
![#1589F0](https://placehold.it/15/1589F0/000000?text=+)
```
![#1589F0](https://placehold.it/15/1589F0/000000?text=+)
   
```stl
solid cube_corner
  facet normal 0.0 -1.0 0.0
    outer loop
      vertex 0.0 0.0 0.0
      vertex 1.0 0.0 0.0
      vertex 0.0 0.0 1.0
    endloop
  endfacet
  facet normal 0.0 0.0 -1.0
    outer loop
      vertex 0.0 0.0 0.0
      vertex 0.0 1.0 0.0
      vertex 1.0 0.0 0.0
    endloop
  endfacet
  facet normal -1.0 0.0 0.0
    outer loop
      vertex 0.0 0.0 0.0
      vertex 0.0 0.0 1.0
      vertex 0.0 1.0 0.0
    endloop
  endfacet
  facet normal 0.577 0.577 0.577
    outer loop
      vertex 1.0 0.0 0.0
      vertex 0.0 1.0 0.0
      vertex 0.0 0.0 1.0
    endloop
  endfacet
endsolid
```
   
```mermaid
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
``` 
   
```mermaid
graph TD;
    Server-->Browser;
    Browser-->Component;
    Browser-->Server;
   GraphQL-cache-->Server
   GraphQL-cache-->Component
   Server-->GraphQL-cache
```
   
```mermaid
   gantt
dateFormat  YYYY-MM-DD
title Adding GANTT diagram to mermaid
excludes weekdays 2014-01-10

section A section
Completed task            :done,    des1, 2014-01-06,2014-01-08
Active task               :active,  des2, 2014-01-09, 3d
Future task               :         des3, after des2, 5d
Future task2               :         des4, after des3, 5d
```
  
```geojson
{
  "type": "FeatureCollection",
  "features": [
    {
      "type": "Feature",
      "id": 1,
      "properties": {
        "ID": 0
      },
      "geometry": {
        "type": "Polygon",
        "coordinates": [
          [
              [-90,35],
              [-90,30],
              [-85,30],
              [-85,35],
              [-90,35]
          ]
        ]
      }
    }
  ]
}
```

> **Note**
> This is a note

> **Warning**
> This is a warning
   
   
