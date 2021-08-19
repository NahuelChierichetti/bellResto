Vue.component('galeria', {
	data:function(){
		return {
			platosfav:[]
		}
	},
	template:
	    `<div class="container">
	    	<div class="row">
	            <div style="display: contents">
		            <div class="col-12">
                        <v-card class="pt-3 pb-3">
                            <div class="text-center">
                                <h2 class="primary--text">Menú</h2>
                            </div>
                        </v-card>
                    </div>
	            </div>
        	</div>
        	<transition appear enter-active-class="animate__animated animate__backInRight">
			<div class="row">
				<div style="display: contents">
					<div class="col-12 col-sm-6" v-for="plato in platosfav" :key="plato.id">
						<v-card class="mt-5" align--center max-width="600" :elevation="14">
							<v-img height="200" :src="plato.src"></v-img>
							<v-card-title>{{plato.titulo}}</v-card-title>
							<v-card-text class="pl-0">
      							<v-row align="center" class="mx-0">
      								<ul class="pl-4">
      									<li style="list-style:none">
      									<v-rating :value="plato.value" color="amber" dense half-increments readonly size="14"></v-rating>
      									</li>
        								<li style="list-style:none; font-weight: 800;">$ {{plato.precio}}</li>
        								<li style="list-style:none" class="mt-1">{{plato.descripcion}}</li>
        							</ul>
      							</v-row>
      						</v-card-text>
      					</v-card>
      				</div>
      			</div>
      		</div>
			</transition>
		</div>`,

	mounted:function(){
		console.log("se monto")
        this.ver_local();
	},

	methods:{
		ver_local:function(){
            var datosLocal = JSON.parse(localStorage.getItem("plato"))
            this.platosfav = datosLocal
		}
	}
	
});
