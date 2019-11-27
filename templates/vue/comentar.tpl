{literal}
 
    <section id="Crearcomentario">
      <label>puntuar</label>
       <select  id="puntaje">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
        </select>
        <textarea id="message" name="textarea" rows="2" cols="150"></textarea>
        <button id="btn-comentar" type="submit" class="btn btn-primary btn-sm" v-on:click="comentar">Comentar</button>
       
    </section>
     <script src="js/comentar.js"></script>

{/literal}
         