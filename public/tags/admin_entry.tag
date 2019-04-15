<admin_entry>
  <!-- <img src={ url } alt="user image" /> -->
  <p>url: {url}</p>
  <p>caption: { caption }</p>
  <p>funness: { funness }</p>
  <p>id: {id}</p>
  <button type="button" onclick={ remove }>Remove This</button>
  <button type="button" onclick={ toggle }>{ public ? "UNPUBLISH" : "PUBLISH"}</button>
  <style>
    :scope {
      display: block;
      background-color: pink;
      margin-top: 2em;
      padding: 2em;
    }
  </style>

  <script>
    var messagesRef = rootRef.child('/memes');
    // console.log("this.id", this.id);

    this.remove = function (){
      console.log("this.id", this.id);
      //remember how we pushed the unique key as a property of each meme?
      var key = this.id;
      messagesRef.child(key).remove();
    }

    this.toggle = function(){
      this.public = !this.public;
    }
  </script>

</admin_entry>
