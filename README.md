The Magic 8 ball API 

<img width="1440" alt="image" src="https://user-images.githubusercontent.com/70462015/227108385-f1f44df0-b771-4004-abb3-2c5910f49171.png">

#INDEX: Show all the available magic balls (open to anyone)
GET /api/v1/balls

#SHAKE: Shake your favourite magic ball to get an answer (open to anyone)
GET /api/v1/balls/:id/shake

#SHOW: Show the name, comment and answers of a specific magic ball (open to anyone)
GET /api/v1/balls/:id

#UPDATE: Update the name and/or comment of a specific magic ball (the creator of that magic ball only)
PATCH /api/v1/balls/:id

#CREATE: Create a new magic ball, with a name and comment to it (logged-in users only)
POST /api/v1/balls

#DESTROY: Delete a magic ball (the creator of that magic ball only)
DELETE /api/v1/balls/:id





Thanks to [Le Wagon coding bootcamp](https://www.lewagon.com) team for the rails app template [lewagon/rails-templates](https://github.com/lewagon/rails-templates)
