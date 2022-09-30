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
