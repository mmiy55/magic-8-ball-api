The Magic 8 ball API 

<img width="1440" alt="image" src="https://user-images.githubusercontent.com/70462015/227108385-f1f44df0-b771-4004-abb3-2c5910f49171.png">
<p><strong>#INDEX:</strong> Show all the available magic balls (open to anyone)</p>
        <h3>GET /api/v1/balls</h3>
        <hr>
        <p><strong>#SHAKE:</strong> Shake your favourite magic ball to get an answer (open to anyone)</p>
        <h3>GET  /api/v1/balls/:id/shake </h3>
        <hr>
        <p><strong>#SHOW:</strong> Show the name, comment and answers of a specific magic ball (open to anyone)</p>
        <h3>GET /api/v1/balls/:id</h3>
        <hr>
        <p><strong>#UPDATE:</strong> Update the name and/or comment of a specific magic ball (the creator of that magic ball only)</p>
        <h3>PATCH /api/v1/balls/:id</h3>
        <hr>
        <p><strong>#CREATE:</strong> Create a new magic ball, with a name and comment to it (logged-in users only)</p>
        <h3>POST /api/v1/balls</h3>
        <hr>
        <p><strong>#DESTROY:</strong> Delete a magic ball (the creator of that magic ball only)</p>
        <h3>DELETE /api/v1/balls/:id</h3>
        <hr>




Thanks to [Le Wagon coding bootcamp](https://www.lewagon.com) team for the rails app template [lewagon/rails-templates](https://github.com/lewagon/rails-templates)
