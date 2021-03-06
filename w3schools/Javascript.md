## Javascript

**Changing elements with a button click:**

- Find an element with the `id:"demo"`
- Change content to `Date()`

```
<button type="button" onclick="document.getElementById('demo').innerHTML = Date()">Click me.</button>
```

In this example, a text such as `<p id="demo">Hello!</p>` with the id "demo" will be changed to the date.

This can also be used to change images:

```
<button onclick="document.getElementById('demo').src='wave.gif'">Click me!</button>
```

Change style:
```
document.getElementById("demo").style.fontSize = "35px";
document.getElementById("demo").style.display = "none";
document.getElementById("demo").style.display = "block";
```

<hr>

**Invoke function with a button click:**

```
<button type="button" onclick="myFunction()">Try it</button>
```

```
function myFunction(){
    document.getElementById("demo").innerHTML = "Paragraph changed.";
}
```

You can also store the function in a separate file, so long as you source it. The script will act as if it were located here:

```
<script src="myScript.js"></script>
```
