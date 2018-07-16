// use of call()

var greetObject = {
  message:"welcome to my blog",
  greeting: function(lang){
    console.log("Lang is ", lang)
    return this.message
  }
}
greetObject.greeting.call({message:"welcome..."},"english")

// use of apply()

var greetObject = {
  message:"welcome to my blog",
  greeting: function(lang){
    console.log("Lang is ", lang)
    return this.message
  }
}
greetObject.greeting.apply({message:"welcome..."},["english"])

// use of bind()

var greetObject = {
  message:"welcome to my blog",
  greeting: function(lang){
    console.log("Lang is ", lang)
    return this.message
  }
}

obj = greetObject.greeting.bind({message:"welcome..."})
obj()
obj("english")