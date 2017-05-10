Owner.create(name: "Alex", username: "alexg622", email: "alex@mail.com", password: "password")
Owner.create(name: "Sue", username: "sue1218", email: "sue@mail.com", password: "password")
Owner.create(name: "Johnny", username: "jon", email: "jon@mail.com", password: "password")
Owner.create(name: "Hanah", username: "hanah", email: "hanah@mail.com", password: "password")


Dog.create(sex: "Male", age: 2, name: "Fido", eyes: "Blue", color: "Black", weight: 100, height: "3'5", personality: "Very nice", owner_id: 1)
Dog.create(sex: "Female", age: 6, name: "Lisdo", eyes: "Brown", color: "Black", weight: 100, height: "3'4", personality: "Very nice", owner_id: 1)
Dog.create(sex: "Male", age: 4, name: "Jasper", eyes: "Brown", color: "Golden", weight: 80, height: "3'2", personality: "Affectionate", owner_id: 1)
Dog.create(sex: "Male", age: 3, name: "Rusty", eyes: "Brown", color: "Black and Brown", weight: 60, height: "2'6", personality: "Energetic", owner_id: 1)
Dog.create(sex: "Female", age: 6, name: "Rodan", eyes: "Brown", color: "Brown and Black", weight: 120, height: "4'6", personality: "Protective", owner_id: 1)

Comment.create(owner_id: 2, dog_id: 1, description: "You have such a beautiful dog!")
Comment.create(owner_id: 1, dog_id: 3, description: "I love my dog!")
Comment.create(owner_id: 1, dog_id: 3, description: "Cute eyes!")

Like.create(owner_id: 1, dog_id: 3)
Like.create(owner_id: 2, dog_id: 3)
Like.create(owner_id: 3, dog_id: 3)
Like.create(owner_id: 4, dog_id: 3)
Like.create(owner_id: 1, dog_id: 5)
Like.create(owner_id: 2, dog_id: 5)
Like.create(owner_id: 3, dog_id: 5)
Like.create(owner_id: 3, dog_id: 4)
Like.create(owner_id: 4, dog_id: 4)
Like.create(owner_id: 2, dog_id: 2)





