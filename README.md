The Magic 8 ball API 

<img width="1440" alt="image" src="https://user-images.githubusercontent.com/70462015/227108385-f1f44df0-b771-4004-abb3-2c5910f49171.png">
<p><strong>#INDEX:</strong> Show all the available magic balls (open to anyone)</p>
<h3>GET /api/v1/balls</h3>
<img width="827" alt="image" src="https://user-images.githubusercontent.com/70462015/227109330-52d22c38-1169-4a3c-8f41-f0bea5b03f6f.png">
<hr>
<p><strong>#SHAKE:</strong> Shake your favourite magic ball to get an answer (open to anyone)</p>
<h3>GET  /api/v1/balls/:id/shake </h3>
<img width="396" alt="image" src="https://user-images.githubusercontent.com/70462015/227109506-d1083686-1baa-4ab3-b19e-3cf3e10f5c24.png">
<hr>
<p><strong>#SHOW:</strong> Show the name, comment and answers of a specific magic ball (open to anyone)</p>
<h3>GET /api/v1/balls/:id</h3>
<img width="701" alt="image" src="https://user-images.githubusercontent.com/70462015/227109627-a3be95da-4e9b-42f3-bdda-6978337959a8.png">
<hr>
<p><strong>#UPDATE:</strong> Update the name and/or comment of a specific magic ball (the creator of that magic ball only)</p>
<h3>PATCH /api/v1/balls/:id</h3>
<em> Usage: </em>
curl <span class="nt">-i</span> <span class="nt">-X</span> PATCH                                        <span class="se">\</span>
       <span class="nt">-H</span> <span class="s1">'Content-Type: application/json'</span>              <span class="se">\</span>
       <span class="nt">-H</span> <span class="s1">'X-User-Email: user@email.com'</span>               <span class="se">\</span>
       <span class="nt">-H</span> <span class="s1">'X-User-Token: a6hYpzsfNJdYC6zEMxs3'</span>          <span class="se">\</span>
       <span class="nt">-d</span> <span class="s1">'{ "ball": { "name": "New name", "comment": "New comment" } }'</span>    <span class="se">\</span>
       http://localhost:3000/api/v1/balls/1
<hr>
        <p><strong>#CREATE:</strong> Create a new magic ball, with a name and comment to it (logged-in users only)</p>
        <h3>POST /api/v1/balls</h3>
        <hr>
        <p><strong>#DESTROY:</strong> Delete a magic ball (the creator of that magic ball only)</p>
        <h3>DELETE /api/v1/balls/:id</h3>
        <hr>




Thanks to [Le Wagon coding bootcamp](https://www.lewagon.com) team for the rails app template [lewagon/rails-templates](https://github.com/lewagon/rails-templates)
