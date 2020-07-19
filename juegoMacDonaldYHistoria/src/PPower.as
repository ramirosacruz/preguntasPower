package
{
	[SWF(width="800", height="600", frameRate="30", backgroundColor= = "#b1126f")] 
	import flash.debugger.enterDebugger;
	import flash.display.Bitmap;
	import flash.display.DisplayObjectContainer;
	import flash.display.Shape;
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.net.Responder;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.trace.Trace;
	
	public class PPower extends Sprite
	{	
		private var PuntosMaximo:int = 0;
		
		private var EstadoDificultad:int = 0;
		[Embed('bgInicio.jpg')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var bgInicioImage:Class;
		private var bgInicio:Bitmap = new bgInicioImage() as Bitmap;
		[Embed('botonConf.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var botonConfImage:Class;
		private var botonConf:Bitmap = new botonConfImage() as Bitmap;
		[Embed('botonConf2.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var botonConf2Image:Class;
		private var botonConf2:Bitmap = new botonConf2Image() as Bitmap;
		[Embed('jugar.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var jugarImage:Class;
		private var jugar:Bitmap = new jugarImage() as Bitmap;
		[Embed('jugar2.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var jugar2Image:Class;
		private var jugar2:Bitmap = new jugar2Image() as Bitmap;
		
		private var ConfButton:SimpleButton = new SimpleButton();
		private var animaciónFuncionando0:Boolean = true;
		private var animaciónFuncionando:Boolean = false;
		private var PlayButton:SimpleButton = new SimpleButton();
		private var textttt:TextField = new TextField();
		[Embed('dificultad.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var dificultadImage:Class;
		private var dificultad:Bitmap = new dificultadImage() as Bitmap;
		
		
		[Embed('dificultad/4A.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var CuatroAImage:Class;
		private var CuatroA:Bitmap = new CuatroAImage() as Bitmap;
		[Embed('dificultad/4B.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var CuatroBImage:Class;
		private var CuatroB:Bitmap = new CuatroBImage() as Bitmap;
		private var DifHC:SimpleButton = new SimpleButton();
		
		
		[Embed('dificultad/3A.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var TresAImage:Class;
		private var TresA:Bitmap = new TresAImage() as Bitmap;
		[Embed('dificultad/3B.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var TresBImage:Class;
		private var TresB:Bitmap = new TresBImage() as Bitmap;
		private var DifDif:SimpleButton = new SimpleButton();
		
		[Embed('dificultad/2A.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var DosAImage:Class;
		private var DosA:Bitmap = new DosAImage() as Bitmap;
		[Embed('dificultad/2B.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var DosBImage:Class;
		private var DosB:Bitmap = new DosBImage() as Bitmap;
		private var DifNormal:SimpleButton = new SimpleButton();
		
		
		[Embed('dificultad/1A.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var UnoAImage:Class;
		private var UnoA:Bitmap = new UnoAImage() as Bitmap;
		[Embed('dificultad/1B.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var UnoBImage:Class;
		private var UnoB:Bitmap = new UnoBImage() as Bitmap;
		private var DifEntren:SimpleButton = new SimpleButton();
		
		[Embed('mayorPuntuación.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var highScoreImage:Class;
		private var highScore:Bitmap = new highScoreImage() as Bitmap;
		
		[Embed('category.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var categoryImage:Class;
		private var category:Bitmap = new categoryImage() as Bitmap;
		
		private var cuadroDeTexto:TextField;
		
		private var Swag:TextFormat;
		
		private var categoriaClima:SimpleButton = new SimpleButton();
		
		private var categoriaRio:SimpleButton = new SimpleButton();
		
		private var categoriaViento:SimpleButton = new SimpleButton();
		
		[Embed('Categoria/climaA.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var climaAImage:Class;
		private var climaA:Bitmap = new climaAImage() as Bitmap;
		[Embed('Categoria/climaB.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var climaBImage:Class;
		private var climaB:Bitmap = new climaBImage() as Bitmap;
		
		[Embed('Categoria/rioA.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var rioAImage:Class;
		private var rioA:Bitmap = new rioAImage() as Bitmap;
		[Embed('Categoria/rioB.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var rioBImage:Class;
		private var rioB:Bitmap = new rioBImage() as Bitmap;
		
		[Embed('Categoria/vientoA.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var vientoAImage:Class;
		private var vientoA:Bitmap = new vientoAImage() as Bitmap;
		[Embed('Categoria/vientoB.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var vientoBImage:Class;
		private var vientoB:Bitmap = new vientoBImage() as Bitmap;
		
		///////////////////FUNDAMENTAL MLG420
		private var CategoriaValue:int= 0;
		private var QuestionValue:int = 0;
		private var OneRTA:int = 0;
		private var TwoRTA:int = 0;
		private var ThreeRTA:int = 0;
	
		private var ClassValue:int = 0;
		private var LimitClass:int = 0;
		private var LimitQuestion:int = 0;
		
		private var FortRTA:String = "Son todas incorrectas ";
		[Embed('ArticulosNecesarios/PuntosConseguidos.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var PuntosConseguidosImage:Class;
		private var PuntosConseguidos:Bitmap = new PuntosConseguidosImage() as Bitmap;
		[Embed('ArticulosNecesarios/SimboloDeTiempo.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var SimboloDeTiempoImage:Class;
		private var SimboloDeTiempo:Bitmap = new SimboloDeTiempoImage() as Bitmap;
		
		[Embed('ArticulosNecesarios/Pregunta.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var PreguntaImage:Class;
		private var Pregunta:Bitmap = new PreguntaImage() as Bitmap;
		
		private var rectangleShape:Shape = new Shape();
		
		
		
		private var puntosPartida:int = 0;
		private var cuadroDeTexto2:TextField;
		private var PreguntaTexto:TextField;
		
		
		
		private var Swag2:TextFormat;
		private var Swag3:TextFormat;
		private var Swag4:TextFormat;
		
		private var RTAButtonA:SimpleButton;
		private var RTBButtonA:SimpleButton;
		private var RTCButtonA:SimpleButton;
		private var RTDButtonA:SimpleButton;
		

	
		
		private var ARTDSprite :Sprite = new Sprite();
		private var BRTDSprite :Sprite = new Sprite();
		
		private var ARTBSprite :Sprite = new Sprite();
		private var BRTBSprite :Sprite = new Sprite();
		
		private var ARTASprite :Sprite = new Sprite();
		private var BRTASprite :Sprite = new Sprite();
		
		
		private var ARTCSprite :Sprite = new Sprite();
		private var BRTCSprite :Sprite = new Sprite();
		
		private var RTAtextField:TextField = new TextField();
		private var RTBtextField:TextField = new TextField();
		private var RTCtextField:TextField = new TextField();
	
		[Embed('ArticulosNecesarios/Respuestas.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var Respuesta1Image:Class;
		private var Respuesta1:Bitmap = new Respuesta1Image() as Bitmap;
		
		[Embed('ArticulosNecesarios/Respuestas.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var Respuesta2Image:Class;
		private var Respuesta2:Bitmap = new Respuesta2Image() as Bitmap;
		
		[Embed('ArticulosNecesarios/Respuestas.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var Respuesta3Image:Class;
		private var Respuesta3:Bitmap = new Respuesta3Image() as Bitmap;

		
		
		[Embed('ArticulosNecesarios/RespuestasB.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var Respuesta1BImage:Class;
		private var Respuesta1B:Bitmap = new Respuesta1BImage() as Bitmap;
		
		[Embed('ArticulosNecesarios/RespuestasB.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var Respuesta2BImage:Class;
		private var Respuesta2B:Bitmap = new Respuesta2BImage() as Bitmap;
		
		[Embed('ArticulosNecesarios/RespuestasB.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var Respuesta3BImage:Class;
		private var Respuesta3B:Bitmap = new Respuesta3BImage() as Bitmap;
		
		[Embed('ArticulosNecesarios/RespuestaIncorrecta.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var RespuestasIncorrecta1Image:Class;
		private var RespuestasIncorrecta1:Bitmap = new RespuestasIncorrecta1Image() as Bitmap;
		
		[Embed('ArticulosNecesarios/RespuestaIncorrecta.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var RespuestasIncorrecta2Image:Class;
		private var RespuestasIncorrecta2:Bitmap = new RespuestasIncorrecta2Image() as Bitmap;
		
		private var TimeTextField:TextField = new TextField();
		
		private var Tiempo:Number = 30; 
		//////////////////////////////
		private var RespuestaCorrecta:int= 1;
		private var vidaRectangulo:Shape = new Shape();
		
		[Embed('ArticulosNecesarios/RespuestaCorrecta.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var RespuestaCorrectaImage:Class;
		private var RespuestaCorrecta2:Bitmap = new RespuestaCorrectaImage() as Bitmap;
		
		private var ganarEnable:Boolean = false;
		
		[Embed('bg2.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var bg2Image:Class;
		private var bg2:Bitmap = new bg2Image() as Bitmap;
		
		[Embed('mano.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var manoImage:Class;
		private var mano:Bitmap = new manoImage() as Bitmap;
		[Embed('logo.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var logoImage:Class;
		private var logo:Bitmap = new logoImage() as Bitmap;
		private var perderSinMorir:Boolean = false;
		[Embed('perdiste.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var perdisteImage:Class;
		private var perdiste:Bitmap = new perdisteImage() as Bitmap;
		[Embed('volver.png')] // png, gif, jpg. Acordarse de tirarlo en la carpeta src
		private var volverImage:Class;
		private var volver:Bitmap = new volverImage() as Bitmap;
		private var volverButon:SimpleButton;
		
		public function  IniciandoPantalla():void{
		
			Pregunta.x =165-640;
			addChild(bgInicio);
			bgInicio.alpha = 0;
			
			vidaRectangulo = new Shape();
			vidaRectangulo.graphics.beginFill(0x14bdcc);
			vidaRectangulo.graphics.drawRect(0, 0, 700, 40);
			vidaRectangulo.graphics.endFill();
			addChild(vidaRectangulo);
			vidaRectangulo.x = 30;
			vidaRectangulo.y = 480+130;
			
			addChild(PuntosConseguidos);
			PuntosConseguidos.y = 0-PuntosConseguidos.height;
			
			Swag2= new TextFormat();
			Swag2.size = 40;
			Swag2.align = "center";
			Swag2.font = "verdana"
			cuadroDeTexto2 = new TextField();
			cuadroDeTexto2.defaultTextFormat = Swag2;
			cuadroDeTexto2.text = puntosPartida.toString();
			
			cuadroDeTexto2.textColor = 0xffffff;
			
			cuadroDeTexto2.height = 50;
			cuadroDeTexto2.width =200;
			cuadroDeTexto2.x = PuntosConseguidos.x+290;
			cuadroDeTexto2.y = PuntosConseguidos.y;
			addChild(cuadroDeTexto2);
			
			addChild(SimboloDeTiempo);
			SimboloDeTiempo.x = 20;
			SimboloDeTiempo.y = 480+130;
			
			category.x = 450+180;
			category.y = -40-180;
			addChild(category);
			highScore.x= -50-170;
			highScore.y=220+170;
			///////SADSAD
			TimeTextField = new TextField();
			TimeTextField.mouseEnabled = false;
			TimeTextField.defaultTextFormat = Swag2;
			TimeTextField.text = "0:"+Tiempo.toString();
			
			TimeTextField.textColor = 0xffffff;
			
			TimeTextField.height = 50;
			TimeTextField.width =100;
			TimeTextField.x = 350;
			TimeTextField.y = 480+130;
			
			addChild(TimeTextField);
		/////////////////////////fsaadsd
			addChild(highScore);
			//Cuadro de texto de la vida
			Swag= new TextFormat();
			Swag.size = 60;
			Swag.align = "center";
			Swag.font = "verdana"
			cuadroDeTexto = new TextField();
			cuadroDeTexto.mouseEnabled = false;
			cuadroDeTexto.defaultTextFormat = Swag;
			cuadroDeTexto.text = contador.toString();
			cuadroDeTexto.textColor = 0xffffff;
			cuadroDeTexto.height = 80;
			cuadroDeTexto.width =200;
			/*cuadroDeTexto.background = true;
		
			cuadroDeTexto.backgroundColor = 0xFFF22F;*/
			cuadroDeTexto.x = highScore.x +60;
			cuadroDeTexto.y = highScore.y +280;

			addChild(cuadroDeTexto);
			
			//4
			CuatroA.y = 350;
			CuatroA.x = 25;
			CuatroA.alpha = 0;
			CuatroB.alpha = 0;
			CuatroB.y = 350;
			CuatroB.x = 25;
			//3
			TresA.y = 350;
			TresA.x = 45+CuatroA.width;
			TresA.alpha = 0;
			TresB.alpha = 0;
			TresB.y = 350;
			TresB.x = 45+CuatroA.width;
			//2
			DosA.y = 350;
			DosA.x = 45+TresA.width+20+CuatroA.width;
			DosA.alpha = 0;
			DosB.alpha = 0;
			DosB.y = 350;
			DosB.x = 45+TresA.width+20+CuatroA.width;
			//1
			UnoA.y = 350;
			UnoA.x = 45+DosA.width+TresA.width+40+CuatroA.width;
			UnoA.alpha = 0;
			UnoB.alpha = 0;
			UnoB.y = 350;
			UnoB.x = 45+DosA.width+TresA.width+40+CuatroA.width;
			/////////
			addChild(CuatroA);
			bgInicio.alpha = 0;
			botonConf2.alpha = 0;
			botonConf.alpha = 0;
			//4
			DifHC = new SimpleButton();
			DifHC.upState = CuatroA;
			DifHC.downState  = CuatroA;
			DifHC.overState = CuatroB;
			DifHC.hitTestState = CuatroA;
			addChild(DifHC);
			//3
			DifDif = new SimpleButton();
			DifDif.upState = TresA;
			DifDif.downState  = TresA;
			DifDif.overState = TresB;
			DifDif.hitTestState = TresA;
			addChild(DifDif);
			//2
			DifNormal = new SimpleButton();
			DifNormal.upState = DosA;
			DifNormal.downState  = DosA;
			DifNormal.overState = DosB;
			DifNormal.hitTestState = DosA;
			addChild(DifNormal);
			//1
			DifEntren = new SimpleButton();
			DifEntren.upState = UnoA;
			DifEntren.downState  = UnoA;
			DifEntren.overState = UnoB;
			DifEntren.hitTestState = UnoA;
			addChild(DifEntren);
			//
			
			
			ConfButton = new SimpleButton();
			ConfButton.upState = botonConf;
			ConfButton.downState  = botonConf;
			ConfButton.overState = botonConf2;
			ConfButton.hitTestState = botonConf;
			addChild(ConfButton);
			
			PlayButton = new SimpleButton();
			PlayButton.upState = jugar;
			PlayButton.downState  = jugar;
			PlayButton.overState = jugar2;
			PlayButton.hitTestState = jugar;
			//
			
			
			climaA.x = 315;
			climaA.y = 230;
			climaB.x = 315;
			climaB.y = 230;
			
			//////
			rioA.x = 315;
			rioA.y = 311;
			
			rioB.x = 315;
			rioB.y = 311;
			///////
			vientoA.x = 315;
			vientoA.y = 392;
			
			vientoB.x = 315;
			vientoB.y = 392;
			///////
			categoriaClima = new SimpleButton();
			categoriaClima.upState = climaA;
			categoriaClima.downState  = climaA;
			categoriaClima.overState = climaB;
			categoriaClima.hitTestState = climaA;
			addChild(categoriaClima);
			categoriaClima.x = 500;
			
			categoriaRio = new SimpleButton();
			categoriaRio.upState = rioA;
			categoriaRio.downState  = rioA;
			categoriaRio.overState = rioB;
			categoriaRio.hitTestState = rioA;
			addChild(categoriaRio);
			categoriaRio.x= 500;
			
			categoriaViento = new SimpleButton();
			categoriaViento.upState = vientoA;
			categoriaViento.downState  = vientoA;
			categoriaViento.overState = vientoB;
			categoriaViento.hitTestState = vientoA;
			addChild(categoriaViento);
			categoriaViento.x = 500;
			////////////
			
			volverButon = new SimpleButton();
			volverButon.upState = volver;
			volverButon.downState  = volver;
			volverButon.overState = volver;
			volverButon.hitTestState = volver;
			
		///////1
			
			var textField:TextField = new TextField();
			textField.name = "textField4";
			textField.mouseEnabled = false;
			
			var textField2:TextField = new TextField();
			textField2.name = "textField4";
			textField2.mouseEnabled = false;
			
			
			
		
			ARTASprite.addChild(Respuesta1);
			ARTASprite.addChild(textField);
			
			
			BRTASprite.addChild(Respuesta1B);
			BRTASprite.addChild(textField2)
		
			
			Swag4= new TextFormat();
			Swag4.size = 14;
			Swag4.align = "center";
			Swag4.font = "verdana"
			
			////////2
			var textField3:TextField = new TextField();
			textField3.name = "textField3";
			textField3.mouseEnabled = false;
			
			var textField4:TextField = new TextField();
			textField4.name = "textField3";
			textField4.mouseEnabled = false;
			
			
			
			ARTBSprite.addChild(Respuesta2);
			ARTBSprite.addChild(textField4);
			
			
			BRTBSprite.addChild(Respuesta2B);
			BRTBSprite.addChild(textField3)
			
			////////3
			var textField5:TextField = new TextField();
			textField5.name = "textField2";
			textField5.mouseEnabled = false;
			
			var textField6:TextField = new TextField();
			textField6.name = "textField2";
			textField6.mouseEnabled = false;
			
			
			
			ARTCSprite.addChild(Respuesta3);
			ARTCSprite.addChild(textField5);
			
			
			BRTCSprite.addChild(Respuesta3B);
			BRTCSprite.addChild(textField6)
				
			////////
			
			////////3
			var textField7:TextField = new TextField();
			textField7.name = "textField1";
			textField7.mouseEnabled = false;
			
			var textField8:TextField = new TextField();
			textField8.name = "textField1";
			textField8.mouseEnabled = false;
			
			textttt.defaultTextFormat = Swag2;
			textttt.textColor = 0xE6AF2E;
			textttt.text = puntosPartida.toString();
			textttt.x = 450;
			textttt.y = 360;
			
			
				
				////////
			/*PlayButton.x = 800-PlayButton.width-30;*/
			PlayButton.alpha = 1;
			PlayButton.x = 800
			PlayButton.y = 300-2;
			addChild(PlayButton);
			PlayButton.addEventListener(MouseEvent.CLICK,PrimeraPantalla);
			stage.addEventListener(Event.ENTER_FRAME, update);
			stage.addEventListener(Event.ENTER_FRAME, update2);
			
			
		}
		
		
		
		public function PPower()
		{	
			IniciandoPantalla();
			
		}
		public function randomRange(minNum:Number, maxNum:Number):Number 
		{
			return (Math.floor(Math.random() * (maxNum - minNum + 1)) + minNum);
		}
		protected function update(event:Event):void
		{
			if(animaciónFuncionando0 == true){
				
				if(bgInicio.alpha < 2){
					bgInicio.alpha += 0.1;
					botonConf.alpha += 0.1;
					botonConf2.alpha += 0.1;
				}else{
					bgInicio.alpha = 2;
					trace(PlayButton.x);
					
					if(PlayButton.x > 600){
						PlayButton.x -= 20;
					}
					
				}
				if(PlayButton.x <= 600){
					bgInicio.alpha = 1;
					botonConf.alpha = 1;
					botonConf2.alpha = 1;
					animaciónFuncionando0 = false;
				}
			}
			
			
			
			
		}
		protected function PrimeraPantalla(event:MouseEvent):void
		{
			
			animaciónFuncionando = true;
			
		}
		protected function update2 (event:Event):void
		{
			if(animaciónFuncionando == true){
				trace(jugar2.x);
				if(bgInicio.alpha != 0){
					bgInicio.alpha -= 0.1;
					
				}
				if(botonConf.alpha != 0){
					botonConf.alpha -= 0.1;
				}
				if(botonConf2.alpha != 0){
					botonConf2.alpha -= 0.1;
				}
				if(jugar.x <= 200){
					jugar.x +=20;
					
				}
				if(jugar2.x <= 200){
					jugar2.x +=20;
				}
				if((jugar2.x > 200)&&(jugar.x > 200)){
					trace("getRekt");
					animaciónFuncionando = false;
					segundaPantalla();
					
					
				}
				
				
				
			}
			
		}
		private function segundaPantalla():void
		{ 	stage.removeEventListener(Event.ENTER_FRAME,update);
			
			stage.removeEventListener(Event.ENTER_FRAME,update2);
			if(contains(ConfButton)){
				removeChild(ConfButton);
			}
			/*addChild(ConfButton);
			botonConf.alpha = 1;
			botonConf2.alpha = 1;
			*/
			dificultad.x = -30;
			dificultad.y = -80-dificultad.height;
			addChild(dificultad);
			
			stage.addEventListener(Event.ENTER_FRAME, update3);
			
			DifHC.addEventListener(MouseEvent.CLICK,ModoHardCoreIniciado);
			DifDif.addEventListener(MouseEvent.CLICK,ModoDificilIniciado);
			
			DifEntren.addEventListener(MouseEvent.CLICK,ModoEntrenamientoIniciado);
			DifNormal.addEventListener(MouseEvent.CLICK,ModoNormalIniciado);
			
			categoriaClima.addEventListener(MouseEvent.CLICK,CategoriaClimaIniciado);
			categoriaRio.addEventListener(MouseEvent.CLICK,CategoriaRioIniciado);
			categoriaViento.addEventListener(MouseEvent.CLICK,CategoriaVientoIniciado);
			
		
			
			
		}
		
		
		
		
		protected function ModoNormalIniciado(event:MouseEvent):void
		{
			puntosPartida = 0;
			EstadoDificultad = 2;
			Tiempo = 30;
			TimeTextField.text=  "0:"+Tiempo;
			
			stage.removeEventListener(Event.ENTER_FRAME,update3);
			stage.addEventListener(Event.ENTER_FRAME, update4);
			trace(EstadoDificultad);
		}
		
		
		
		protected function ModoEntrenamientoIniciado(event:MouseEvent):void
		{
			
			puntosPartida = 0;
			EstadoDificultad = 1;
			trace(EstadoDificultad);
			stage.removeEventListener(Event.ENTER_FRAME,update3);
			stage.addEventListener(Event.ENTER_FRAME, update4);
		}
		
		protected function ModoHardCoreIniciado(event:MouseEvent):void
		{
			Tiempo = 15;
			TimeTextField.text=  "0:"+Tiempo;
			vidaRectangulo.width = (vidaRectangulo.width /2);
			puntosPartida = 0;
			EstadoDificultad = 4;
			trace(EstadoDificultad);
			stage.removeEventListener(Event.ENTER_FRAME,update3);
			stage.addEventListener(Event.ENTER_FRAME, update4);
		}
		
		protected function ModoDificilIniciado(event:MouseEvent):void
		{
			Tiempo = 15;
			TimeTextField.text=  "0:"+Tiempo;
			vidaRectangulo.width = (vidaRectangulo.width /2);
			EstadoDificultad = 3;
			trace(EstadoDificultad);
			stage.removeEventListener(Event.ENTER_FRAME,update3);
			stage.addEventListener(Event.ENTER_FRAME, update4);
			
		}
		//contadores  que vas a usar 
		//4
		private var contadorAux:int = 0;
		private var contador1Aux:int = 0;
		//3
		private var contador3Aux:int = 0;
		private var contador2Aux:int = 0;
		//2
		private var contador4Aux:int = 0;
		private var contador5Aux:int = 0;
		//1
		private var contador6Aux:int = 0;
		private var contador7Aux:int = 0;
		
		
		protected function update3(event:Event):void	{	
			//// Para agregar uno nuevo haces esto 
			if(	dificultad.y < -20){
				dificultad.y += 8;
			}else{
				//////Pa ca pa delante lo pones 
				// NO OLVIDAR PONER TODO EN ALPHA AL 0 TIPO LOS BOTONES, LAS IMAGENES.
				//4A
				if((CuatroA.scaleX < 1+0.2)&&(contadorAux == 0)){ //Pones el contador
					CuatroA.scaleX +=0.02;
					CuatroA.scaleY +=0.02;
					CuatroA.x -= 1.5; 
					CuatroA.alpha += 0.1;
					trace(CuatroA.scaleX);
				}else{
					contadorAux = 1;
				}
				if((contadorAux > 0)&&(CuatroA.scaleX> 1)){
					contadorAux ++;
					
					CuatroA.scaleX -= 0.02;
					CuatroA.scaleY -= 0.02;
					CuatroA.x += 1.5; 
				}
				////////////////////B
				if((CuatroB.scaleX < 1+0.2)&&(contador1Aux == 0)){
					CuatroB.scaleX +=0.02;
					CuatroB.scaleY +=0.02;
					CuatroB.x -= 1.5; 
					CuatroB.alpha += 0.1;
					trace(CuatroB.scaleX);
				}else{
					contador1Aux = 1;
				}
				if((contador1Aux > 0)&&(CuatroB.scaleX> 1)){
					contador1Aux ++;
					
					CuatroB.scaleX -= 0.02;
					CuatroB.scaleY -= 0.02;
					CuatroB.x += 1.5; 
				}
				//3A
				
				if((TresA.scaleX < 1+0.2)&&(contador3Aux == 0)){ //Pones el contador
					TresA.scaleX +=0.02;
					TresA.scaleY +=0.02;
					TresA.x -= 1.5; 
					TresA.alpha += 0.1;
					trace(TresA.scaleX);
				}else{
					contador3Aux = 1;
				}
				if((contador3Aux > 0)&&(TresA.scaleX> 1)){
					contador3Aux ++;
					
					TresA.scaleX -= 0.02;
					TresA.scaleY -= 0.02;
					TresA.x += 1.5; 
				}
				////////////////////B
				if((TresB.scaleX < 1+0.2)&&(contador2Aux == 0)){
					TresB.scaleX +=0.02;
					TresB.scaleY +=0.02;
					TresB.x -= 1.5; 
					TresB.alpha += 0.1;
					trace(TresB.scaleX);
				}else{
					contador2Aux = 1;
				}
				if((contador2Aux > 0)&&(TresB.scaleX> 1)){
					contador2Aux ++;
					
					TresB.scaleX -= 0.02;
					TresB.scaleY -= 0.02;
					TresB.x += 1.5; 
				}
				//2A
				if((DosA.scaleX < 1+0.2)&&(contador4Aux == 0)){ //Pones el contador
					DosA.scaleX +=0.02;
					DosA.scaleY +=0.02;
					DosA.x -= 1.5; 
					DosA.alpha += 0.1;
					trace(DosA.scaleX);
				}else{
					contador4Aux = 1;
				}
				if((contador4Aux > 0)&&(DosA.scaleX> 1)){
					contador4Aux ++;
					
					DosA.scaleX -= 0.02;
					DosA.scaleY -= 0.02;
					DosA.x += 1.5; 
				}
				////////////////////B
				if((DosB.scaleX < 1+0.2)&&(contador5Aux == 0)){
					DosB.scaleX +=0.02;
					DosB.scaleY +=0.02;
					DosB.x -= 1.5; 
					DosB.alpha += 0.1;
					trace(DosB.scaleX);
				}else{
					contador5Aux = 1;
				}
				if((contador5Aux > 0)&&(DosB.scaleX> 1)){
					contador5Aux ++;
					
					DosB.scaleX -= 0.02;
					DosB.scaleY -= 0.02;
					DosB.x += 1.5; 
				}
				//1A
				if((UnoA.scaleX < 1+0.2)&&(contador6Aux == 0)){ //Pones el contador
					UnoA.scaleX +=0.02;
					UnoA.scaleY +=0.02;
					UnoA.x -= 1.5; 
					UnoA.alpha += 0.1;
					
				}else{
					contador6Aux = 1;
				}
				if((contador6Aux > 0)&&(UnoA.scaleX> 1)){
					contador6Aux ++;
					
					UnoA.scaleX -= 0.02;
					UnoA.scaleY -= 0.02;
					UnoA.x += 1.5; 
				}
				////////////////////B
				if((UnoB.scaleX < 1+0.2)&&(contador7Aux == 0)){
					UnoB.scaleX +=0.02;
					UnoB.scaleY +=0.02;
					UnoB.x -= 1.5; 
					UnoB.alpha += 0.1;
					
				}else{
					contador7Aux = 1;
				}
				if((contador7Aux > 0)&&(UnoB.scaleX> 1)){
					contador7Aux ++;
					
					UnoB.scaleX -= 0.02;
					UnoB.scaleY -= 0.02;
					UnoB.x += 1.5; 
				}
				
			}
		}
	
		protected function update4(event:Event):void
		{
			DifDif.y += 20;
			DifEntren.x += 20;
			DifHC.x -= 20;
			DifNormal.y += 20;
			dificultad.y -= 20;
			if((DifDif.y > 600)&&(DifEntren.x > 600)&&(DifHC.x < 0)&&(dificultad.y < 0)&&(DifNormal.y > 600)){
				stage.addEventListener(Event.ENTER_FRAME, update5);
			}
		}
		private var contador:int = 0;
		private var perderEnable:Boolean = false;
		private var JuegoEnCurso:Boolean =false;
		
		protected function update5(event:Event):void
		{
			if(climaA.x > -170){
				climaB.x -=30;
				climaA.x -=30;
			}
			if((climaA.x <= -170)&&(rioA.x > -170)){
				rioA.x -=30;
				rioB.x -=30;
			}
			if((rioA.x <= -170)&&(vientoA.x > -170)){
				vientoA.x -=30;
				vientoB.x -=30;
			}
			if(vientoA.x == -195){
			
			tercerPantalla(); 
				
			}
			trace(rioA.x);
			
			if((category.y<-40)&&(category.x > 450)){
				category.y += 8;
				category.x -= 8;
			}
			cuadroDeTexto.text = contador.toString();
			
				if(contador < PuntosMaximo){
					if(contador < 100){
						contador += 5;
					}else{
						contador += PuntosMaximo/50;
					}
					
				}
				if(contador > PuntosMaximo){
					contador = PuntosMaximo;
				}
		
			
			cuadroDeTexto.x = highScore.x +60;
			cuadroDeTexto.y = highScore.y +280;
			if(!((highScore.x> -50)&&(highScore.y<220))){
				highScore.x += 8;
				highScore.y -= 8;
			
			}
			stage.removeEventListener(Event.ENTER_FRAME,update4);
			trace("el gato cayo en la trampa xd");
		}
		
		private function tercerPantalla():void
		{
		
			if(contains(DifEntren)){
				removeChild(DifEntren);
			}
			if(contains(DifDif)){
				removeChild(DifDif);
			}
			if(contains(DifHC)){
				removeChild(DifHC);
			}
			if(contains(DifNormal)){
				removeChild(DifNormal);
			}
			if(contains(dificultad)){
				removeChild(dificultad);
			}
			
			
		}
		protected function escribirPregunta(CategoríaGet:int, ClasssGet:int, PreguntaGet:int):String{
			var Resultado:String = "";
			////////////////////CATEGORÍA
			
			
			//////////////////VIENTOS
			if(CategoriaValue == 1){
				
				
				
				if(ClassValue == 1)
				{
					if(PreguntaGet == 1){
						Resultado = "How many items did the first McDonald's menu have?";
					}
					if(PreguntaGet == 2){
						Resultado = "In how many restaurants was McCafe?";
					}
					if(PreguntaGet == 3){
						Resultado = "How much was the income that surpassed the hóstorico of McDonald's?(Millions)";
					}
					if(PreguntaGet == 4){
						Resultado = "How much is the percentage of restaurants that are directly controlled by McDonald's?";
					}
				}
				if(ClassValue == 2)
				{
					if(PreguntaGet == 1){
						Resultado = "In what year was the name changed to McDonald's Famous Hamburgers?";
					}
					if(PreguntaGet == 2){
						Resultado = "In what year was the name changed to McDonald's Corporation?";
					}
					if(PreguntaGet == 3){
						Resultado = "In what year did the first McDonald's opened?";
					}
					if(PreguntaGet == 4){
						Resultado = "In what year is 'automac' incorporated?";
					}
					if(PreguntaGet == 5){
						Resultado = "In what year is the 'Happy meal' introduced?";
					}
					if(PreguntaGet == 6){
						Resultado = "In what year was smoking banned at McDonald's?";
					}
					
				}
				if(ClassValue == 3)
				{
					if(PreguntaGet == 1){
						Resultado = "Who joins McDonald's in 1954?";
					}
					if(PreguntaGet == 2){
						Resultado = "What was the name of the first McDonald's pet?";
					}
					if(PreguntaGet == 3){
						Resultado = "Who opened the first franchise?";
					}
					if(PreguntaGet == 3){
						Resultado = "What is the current McDonalds pet?";
					}
					
				}
				if(ClassValue == 4)
				{
					if(PreguntaGet == 1){
						Resultado = "Where was the biggest restaurant in (theirs) built?";
					}
					if(PreguntaGet == 2){
						Resultado = "Where is this 'Gran Via De Vigo' ?";
					}
					if(PreguntaGet == 3){
						Resultado = "Where did the brothers start?";
					}
					if(PreguntaGet == 4){
						Resultado = "Where was the BigTasty introduced? (Grande y sabrosa)";
					}
					
				}
				if(ClassValue == 5)
				{
					if(PreguntaGet == 1){
						Resultado = "McDonald's is a chain of fast food restaurants...";
					}
					if(PreguntaGet == 2){
						Resultado = "McDonalds is a chain of gourmet restaurants...";
					}
					if(PreguntaGet == 3){
						Resultado = "You are a lucky";
					}
					
				}
			}
			//////////////////RÍO
			if(CategoriaValue == 2){
				
				if(ClassValue == 1)
				{
					if(PreguntaGet == 1){
						Resultado = "¿Cuándo Salvador Allende entró en el poder en Chile?";
					}
					if(PreguntaGet == 2){
						Resultado = "¿En qué año la Iglesia se comenzó a acercar a los problemas sociales y económicos que vivía la población mundial?";
					}
					if(PreguntaGet == 3){
						Resultado = "¿en qué década cambió la DSN?";
					}
					if(PreguntaGet == 4){
						Resultado = "¿A partir de que año se puso en marcha un mecanismo: las conferencias de ejércitos armados y fuerzas aéreas americanas a las más altas jerarquías de las instituciones castrenses de la región?";
					}
					if(PreguntaGet == 5){
						Resultado = "¿Cuándo fue el primer viaje Latinoamérico";
					}
				}
				if(ClassValue == 2)
				{
					if(PreguntaGet == 1){
						Resultado = "¿Qué doctrina fue sustituida por la doctrina de seguridad Nacional?";
					}
					
				}
				if(ClassValue == 3)
				{
					if(PreguntaGet == 1){
						Resultado = "¿Qué no hizo salvador Allende durante su mandato?";
					}
					
				}
				if(ClassValue == 4)
				{
					if(PreguntaGet == 1){
						Resultado = "¿cuál fue el objetivo de la DSN?";
					}
					
				}
				if(ClassValue == 5)
				{
					if(PreguntaGet == 1){
						Resultado = "La Junta Interamericana de defensa programó un plan continental para…";
					}
					
				}
				if(ClassValue == 6)
				{
					if(PreguntaGet == 1){
						Resultado = "¿Cómo murió Ernesto Guevara?";
					}
					
				}
				if(ClassValue == 7)
				{
					if(PreguntaGet == 1){
						Resultado = "El impacto de la revolucion cubana en america latina fue";
					}
					
				}
				if(ClassValue == 8)
				{
					if(PreguntaGet == 1){
						Resultado = "El obispo brasileño camara lidero un grupo que redactó un documento titulado";
					}
					
				}
				if(ClassValue == 9)
				{
					if(PreguntaGet == 1){
						Resultado = "Entre 1970 y 1980 los grupos guerrilleros llegaron a convertirse en fuerzas politicas importantes, pero solo llegaron a tomar el poder en... ";
					}
					
				}
				if(ClassValue == 10)
				{
					if(PreguntaGet == 1){
						Resultado = "En toda america latina surgieron facciones de izquierda guerrilla o foquista en las decadas de";
					}
					
				}

				if(ClassValue == 11)
				{
					if(PreguntaGet == 1){
						Resultado = "el che era partidario de llevar el socialismo al poder mediante... ";
					}
					
				}
				if(ClassValue == 12)
				{
					if(PreguntaGet == 1){
						Resultado = "Los grupos guerrilleros, despues de varios años de guerra, decidieron...  ";
					}
					
				}
				if(ClassValue == 13)
				{
					if(PreguntaGet == 1){
						Resultado = "En septiembre de 1970, al postularse para presidentes, la diferencia de votos entre salvador allende y jorge alessandri fue...   ";
					}
					
				}
				if(ClassValue == 14)
				{
					if(PreguntaGet == 1){
						Resultado = "El gobierrno de Allende fue derrocado por un sangriento golpe militar, acaecido en...    ";
					}
					
				} 
				if(ClassValue == 15)
				{
					if(PreguntaGet == 1){
						Resultado = "en el periodo de guerra fría, la mayoria de america latina estaba bajo latina influencia...    ";
					}
					
				}
				if(ClassValue == 16)
				{
					if(PreguntaGet == 1){
						Resultado = "el che guevara fue ejecutado el 9 de octubre de…   ";
					}
					
				}
				if(ClassValue == 17)
				{
					if(PreguntaGet == 1){
						Resultado = "  el intento guerrilero del che en argentina fue un...  ";
					}
					
				}
				if(ClassValue == 18)
				{
					if(PreguntaGet == 1){
						Resultado = " Durante la guerra fria, cuba mantuvo una alianza con...  ";
					}
					
				}
				if(ClassValue == 19)
				{
					if(PreguntaGet == 1){
						Resultado = " Durante el conflicto de los misiles nucleares en cuba, en la casa blanca se inauguro la famosa linea de comunicacion directa con la union sovietica llamada  ";
					}
					
				}
				if(ClassValue == 20)
				{
					if(PreguntaGet == 1){
						Resultado = " durante el golpe militar en chile, estados unidos tuvo una intervención… ";
					}
					
				}
				if(ClassValue == 21)
				{
					if(PreguntaGet == 1){
						Resultado = "al final, la crisis de los misiles se termino solucionando con un acuerdo en el que participaron  ";
					}
					
				}
				
				
				
			}
			//////////////////CLIMAS
			if(CategoriaValue == 3){
				
				if(ClassValue == 1)
				{
					if(PreguntaGet == 1){
						Resultado = "¿Cuál es la temperatura media del subtropical cálido sin estación seca?";
					}
					if(PreguntaGet == 2){
						Resultado = "¿Cuál es la temperatura media del subtropical cálido con estación seca?";
					}
					if(PreguntaGet == 3){
						Resultado = "¿Cuál es la temperatura media del subtropical cálido serrano?";
					}
					if(PreguntaGet == 4){
						Resultado = "¿Cuál es la temperatura del templado pampeano?";
					}
					if(PreguntaGet == 5){
						Resultado = "¿Cuál es la temperatura media del frío húmedo?";
					}
					if(PreguntaGet == 6){
						Resultado = "¿Cuál es la temperatura media del frío polar?";
					}
					if(PreguntaGet == 7){
						Resultado = "¿Cuál es la temperatura media del árido de estepa?";
					}
					if(PreguntaGet == 8){
						Resultado = "¿Cuál es la temperatura media del árido de alta montaña?";
					}
					if(PreguntaGet == 9){
						Resultado = "¿Cuál es la temperatura media del árido de sierras y campos?";
					}
					if(PreguntaGet == 10){
						Resultado = "¿Cuál es la temperatura media del árido de frío?";
					}
				}
				if(ClassValue == 2)
				{
					
					if(PreguntaGet == 1){
						Resultado = "¿Cuál es la amplitud térmica del subtropical cálido sin estación seca?";
					}
					if(PreguntaGet == 2){
						Resultado = "¿Cuál es la amplitud térmica del subtropical cálido con estación seca?";
					}
					if(PreguntaGet == 3){
						Resultado = "¿Cuál es la amplitud térmica del subtropical cálido serrano?";
					}
					if(PreguntaGet == 4){
						Resultado = "¿Cuál es la amplitud térmica del templado pampaneo?";
					}
					if(PreguntaGet == 5){
						Resultado = "¿Cuál es la amplitud térmica del frío húmedo?";
					}
					if(PreguntaGet == 6){
						Resultado = "¿Cuál es la amplitud térmica del frío polar?";
					}
					if(PreguntaGet == 7){
						Resultado = "¿Cuál es la amplitud térmica del árido de estepa?";
					}
					if(PreguntaGet == 8){
						Resultado = "¿Cuál es la amplitud térmica del árido de alta montaña?";
					}
					if(PreguntaGet == 9){
						Resultado = "¿Cuál es la amplitud térmica del árido de sierras y campos?";
					}
					if(PreguntaGet == 10){
						Resultado = "¿Cuál es la amplitud térmica del árido de frío?";
					}
				}
				if(ClassValue == 3)
				{
					
					if(PreguntaGet == 1){
						Resultado = "¿Cuál es el bioma en el clima cálido subtropical sin estación seca?";
					}
					if(PreguntaGet == 2){
						Resultado = "¿Cuál es el bioma en el clima cálido subtropical con estación seca?";
					}
					if(PreguntaGet == 3){
						Resultado = "¿Cuál es el bioma en el clima cálido subtropical serrano?";
					}
					if(PreguntaGet == 4){
						Resultado = "¿Cuál es el bioma en el clima templado pampeano?";
					}
					if(PreguntaGet == 5){
						Resultado = "¿Cuál es el bioma en el clima frio húmedo?";
					}
					if(PreguntaGet == 6){
						Resultado = "¿Cuál es el bioma en el clima frio polar?";
					}
					if(PreguntaGet == 7){
						Resultado = "¿Cuál es el bioma en el clima árido estepa?";
					}
					if(PreguntaGet == 8){
						Resultado = "¿Cuál es el bioma en el clima árido de alta montaña?";
					}
					if(PreguntaGet == 9){
						Resultado = "¿Cuál es el bioma en el clima árido de sierras y campo?";
					}
					if(PreguntaGet == 10){
						Resultado = "¿Cuál es el bioma en el clima árido frio?";
					}
					
				}
				if(ClassValue == 4)
				{
					if(PreguntaGet == 1){
						Resultado = "¿Cuáles son las precipitaciones en el clima cálido subtropical sin estación seca?";
					}
					if(PreguntaGet == 2){
						Resultado = "¿Cuáles son las precipitaciones en el clima cálido subtropical con estación seca?";
					}
					if(PreguntaGet == 3){
						Resultado = "¿Cuáles son las precipitaciones en el clima cálido subtropical serrano?";
					}
					if(PreguntaGet == 4){
						Resultado = "¿Cuáles son las precipitaciones en el clima templado pampeano?";
					}
					if(PreguntaGet == 5){
						Resultado = "¿Cuáles son las precipitaciones en el clima frio húmedo?";
					}
					if(PreguntaGet == 6){
						Resultado = "¿Cuáles son las precipitaciones en el clima frio polar?";
					}
					if(PreguntaGet == 7){
						Resultado = "¿Cuáles son las precipitaciones en el clima árido estepa?";
					}
					if(PreguntaGet == 8){
						Resultado = "¿Cuáles son las precipitaciones en el clima árido de alta montaña?";
					}
					if(PreguntaGet == 9){
						Resultado = "¿Cuáles son las precipitaciones en el clima árido de sierras y campo?";
					}
					if(PreguntaGet == 10){
						Resultado = "¿Cuáles son las precipitaciones en el clima árido frio?";
					}
					
				}
			
			}
			
			return Resultado;
		}
		protected function escribirRespuesta(CategoríaGet:int, ClasssGet:int, RespuestaGet:int):String{
			var resultado:String = "";
			if(CategoriaValue == 1){//VIENTOS
				
				
				if(ClassValue == 1)
				{
					if(RespuestaGet == 1){
						resultado = "20";
					}
					if(RespuestaGet == 2){
						resultado = "13";
					}
					if(RespuestaGet == 3){
						resultado = "27";
					}
					if(RespuestaGet == 4){
						resultado = "15";
					}
				}
				if(ClassValue == 2)
				{
					//RESPUESTAS PARECIDAS
					if(RespuestaGet == 1){
						resultado = "1948";
					}
					if(RespuestaGet == 2){
						resultado = "1961";
					}
					if(RespuestaGet == 3){
						resultado = "1970";
					}
					if(RespuestaGet == 4){
						resultado = "1975";
					}
					if(RespuestaGet == 5){
						resultado = "1979";
					}
					if(RespuestaGet == 6){
						resultado = "1994";
					}
				}
				
				if(ClassValue == 3)
				{
					if(RespuestaGet == 1){
						resultado = "Ray Kroc";
					}
					if(RespuestaGet == 2){
						resultado = "Speede";
					}
					if(RespuestaGet == 3){
						resultado = "Neil Fox";
					}
					if(RespuestaGet == 4){
						resultado = "Ronald McDonald's";
					}
				}
				if(ClassValue == 4)
				{
					if(RespuestaGet == 1){
						resultado = "London";
					}
					if(RespuestaGet == 2){
						resultado = "Spain";
					}
					if(RespuestaGet == 3){
						resultado = "Arcadia";
					}
					if(RespuestaGet == 4){
						resultado = "All U.S.A";
					}
					
				}
				if(ClassValue == 5)
				{
					if(RespuestaGet == 1){
						resultado = "True";
					}
					if(RespuestaGet == 2){
						resultado = "False";
					}
					if(RespuestaGet == 3){
						resultado = "Emmm... Messi";
					}
					
					
				}
				
			}
			if(CategoriaValue == 2){//Rios
				
				
				
				if(ClassValue == 1)//Números
				{
					if(RespuestaGet == 1){
						resultado = "1970";
					}
					if(RespuestaGet == 2){
						resultado = "1962";
					}
					if(RespuestaGet == 3){
						resultado = "1960";
					}
					if(RespuestaGet == 4){
						resultado = "1959";
					}
					if(RespuestaGet == 4){
						resultado = "1952";
					}
				}
				if(ClassValue == 2)//Números
				{
					if(RespuestaGet == 1){
						resultado = "Doctrina de defensa Nacional ";
					}
					if(RespuestaGet == 2){
						resultado = "La doctrina de desarrollo nacional ";
					}
					if(RespuestaGet == 3){
						resultado = "Programa de ayuda militar";
					}
					
				}
				if(ClassValue == 3)//Números
				{
					if(RespuestaGet == 1){
						resultado = "Industrializo la producción del salitre";
					}
					if(RespuestaGet == 2){
						resultado = "Completo la reforma agraria ";
					}
					if(RespuestaGet == 3){
						resultado = "La redistribución del ingreso a favor de los sectores trabajadores.";
					}
					
				}
				if(ClassValue == 4)//Números
				{
					if(RespuestaGet == 1){
						resultado = "Mantener el equilibrio frente a la URSS";
					}
					if(RespuestaGet == 2){
						resultado = "Mantener el equilibrio frente a EEUU  ";
					}
					if(RespuestaGet == 3){
						resultado = "Ayudar a los países latinoamericanos económicamente";
					}
					
				}
				if(ClassValue == 5)//Números
				{
					if(RespuestaGet == 1){
						resultado = "Enfrentar a la amenaza subversiva";
					}
					if(RespuestaGet == 2){
						resultado = "Lograr una unión de los países Latinoamericanos  ";
					}
					if(RespuestaGet == 3){
						resultado = "Ayudar en los movimientos guerrilleros";
					}
					
				}
				if(ClassValue == 6)//Números
				{
					if(RespuestaGet == 1){
						resultado = "Fusilado por ejércitos bolivianos ";
					}
					if(RespuestaGet == 2){
						resultado = "Asesinado en combate  ";
					}
					if(RespuestaGet == 3){
						resultado = "Cáncer de pulmón";
					}
					
				}
				if(ClassValue == 7)//Números
				{
					if(RespuestaGet == 1){
						resultado = "Relevante ";
					}
					if(RespuestaGet == 2){
						resultado = "Divertido   ";
					}
					if(RespuestaGet == 3){
						resultado = "Directo";
					}
					
				}
				if(ClassValue == 8)//Números
				{
					if(RespuestaGet == 1){
						resultado = "Mensaje a los pueblos del tercer mundo ";
					}
					if(RespuestaGet == 2){
						resultado = "La paz armada   ";
					}
					if(RespuestaGet == 3){
						resultado = "Doctrina Monroe";
					}
					
				}
				if(ClassValue == 9)//Números
				{
					if(RespuestaGet == 1){
						resultado = "Nicaragua";
					}
					if(RespuestaGet == 2){
						resultado = "Brasil ";
					}
					if(RespuestaGet == 3){
						resultado = "Argentina";
					}
					
				}
				if(ClassValue == 10)//Números
				{
					if(RespuestaGet == 1){
						resultado = "1960 y 1970";
					}
					if(RespuestaGet == 2){
						resultado = "1966 y 1973 ";
					}
					if(RespuestaGet == 3){
						resultado = "1916 y 1933";
					}
					
				}
				if(ClassValue == 11)//Números
				{
					if(RespuestaGet == 1){
						resultado = "La lucha armada";
					}
					if(RespuestaGet == 2){
						resultado = "Diálogo  ";
					}
					if(RespuestaGet == 3){
						resultado = "Todas son correctasxd";
					}
					
				}
				if(ClassValue == 12)//Números
				{
					if(RespuestaGet == 1){
						resultado = "Abandonar la lucha armada";
					}
					if(RespuestaGet == 2){
						resultado = "Hacerse un buen asado  ";
					}
					if(RespuestaGet == 3){
						resultado = "Llamar a elecciones";
					}
					
				}
				if(ClassValue == 13)//Números
				{
					if(RespuestaGet == 1){
						resultado = "Escasa";
					}
					if(RespuestaGet == 2){
						resultado = "Demasiada ";
					}
					if(RespuestaGet == 3){
						resultado = "No hubo diferencia, fue fraude";
					}
					
				}
				if(ClassValue == 14)//Números
				{
					if(RespuestaGet == 1){
						resultado = "1973";
					}
					if(RespuestaGet == 2){
						resultado = "1810 ";
					}
					if(RespuestaGet == 3){
						resultado = "La década infame";
					}
					
				}
				if(ClassValue == 15)//Números
				{
					if(RespuestaGet == 1){
						resultado = "Estadounidense";
					}
					if(RespuestaGet == 2){
						resultado = "El peronismo";
					}
					if(RespuestaGet == 3){
						resultado = "Lusitanismo";
					}
					
				}
				if(ClassValue == 16)//Números
				{
					if(RespuestaGet == 1){
						resultado = "1967";
					}
					if(RespuestaGet == 2){
						resultado = "1968";
					}
					if(RespuestaGet == 3){
						resultado = "1970";
					}
					
				}
				
				if(ClassValue == 17)//Números
				{
					if(RespuestaGet == 1){
						resultado = "Fracaso";
					}
					if(RespuestaGet == 2){
						resultado = "El logro más grande de la humanidad después del de Gardel";
					}
					if(RespuestaGet == 3){
						resultado = "Fraude ";
					}
					
				}
				if(ClassValue == 18)//Números
				{
					if(RespuestaGet == 1){
						resultado = "La union sovietica";
					}
					if(RespuestaGet == 2){
						resultado = "Peronismo";
					}
					if(RespuestaGet == 3){
						resultado = "Tomás";
					}
					
				}
				if(ClassValue == 19)//Números
				{
					if(RespuestaGet == 1){
						resultado = "Teléfono rojo";
					}
					if(RespuestaGet == 2){
						resultado = "Teléfono de varios colores (tipo LGTB)";
					}
					if(RespuestaGet == 3){
						resultado = "Teléfono amarillo";
					}
					
				}
				if(ClassValue == 20)//Números
				{
					if(RespuestaGet == 1){
						resultado = "Directa";
					}
					if(RespuestaGet == 2){
						resultado = "Carnal (Utilizada esta frase por el entonces dictador Pinochet)";
					}
					if(RespuestaGet == 3){
						resultado = "Nunca hubo, es todo una conspiración comunista";
					}
					
				}
				
				if(ClassValue == 21)//Números
				{
					if(RespuestaGet == 1){
						resultado = " Estados unidos y la union sovietica";
					}
					if(RespuestaGet == 2){
						resultado = " Corea del Norte y Donald Trump";
					}
					if(RespuestaGet == 3){
						resultado = " Estados unidos y Cuba";
					}
					
				}
				
				
			}
			if(CategoriaValue == 3){///Climas
				
				
				
				if(ClassValue == 1)
				{
					if(RespuestaGet == 1){
						resultado = "18ºC";
					}
					if(RespuestaGet == 2){
						resultado = "20°C";
					}
					if(RespuestaGet == 3){
						resultado = "Entre 12°C a 18°C";
					}
					if(RespuestaGet == 4){
						resultado = "15°C";
					}
					if(RespuestaGet == 5){
						resultado = "10ºC";
					}
					if(RespuestaGet == 6){
						resultado = "0ºC";
					}
					if(RespuestaGet == 7){
						resultado = "15ºC";
					}
					if(RespuestaGet == 8){
						resultado = "9ºC";
					}
					if(RespuestaGet == 9){
						resultado = "18ºC";
					}
					if(RespuestaGet == 10){
						resultado = "10ºC";
					}
					
					
				}
				if(ClassValue == 2)
				{
					
					if(RespuestaGet == 1){
						resultado = "Escasa amplitud térmica";
					}
					if(RespuestaGet == 2){
						resultado = "Moderada amplitud térmica";
					}
					if(RespuestaGet == 3){
						resultado = "Mucha amplitud térmica";
					}
					if(RespuestaGet == 4){
						resultado = "Disminuye de este a oeste";
					}
					if(RespuestaGet == 5){
						resultado = "Poca amplitud térmica";
					}
					if(RespuestaGet == 6){
						resultado = "Mucha amplitud térmica";
					}
					if(RespuestaGet == 7){
						resultado = "Mucha amplitud térmica";
					}
					if(RespuestaGet == 8){
						resultado = "Mucha amplitud térmica";
					}
					if(RespuestaGet == 9){
						resultado = "Mucha amplitud térmica";
					}
					if(RespuestaGet == 10){
						resultado = "Mucha amplitud térmica";
					}
				}
				if(ClassValue == 3)
				{
					if(RespuestaGet == 1){
						resultado = "Selva subtropical";
					}
					if(RespuestaGet == 2){
						resultado = "Bosques y sabanas";
					}
					if(RespuestaGet == 3){
						resultado = "Selva de transición";
					}
					if(RespuestaGet == 4){
						resultado = "Pastizal (estepa o pradera)";
					}
					if(RespuestaGet == 5){
						resultado = "Bosque de coníferas";
					}
					if(RespuestaGet == 6){
						resultado = "Tundra";
					}
					if(RespuestaGet == 7){
						resultado = "Desierto";
					}
					if(RespuestaGet == 8){
						resultado = "Desierto";
					}
					if(RespuestaGet == 9){
						resultado = "Desierto";
					}
					if(RespuestaGet == 10){
						resultado = "Desierto";
					}
				}
				if(ClassValue == 4)
				{
					if(RespuestaGet == 1){
						resultado = "Abundantes y regulares";
					}
					if(RespuestaGet == 2){
						resultado = "Suficientes, concentradas en verano, no hay en invierno";
					}
					if(RespuestaGet == 3){
						resultado = "Abundantes y orográficas";
					}
					if(RespuestaGet == 4){
						resultado = "Suficientes, disminuyen de este a oeste";
					}
					if(RespuestaGet == 5){
						resultado = "Nevadas, abundantes, todo el año, de choque de frente";
					}
					if(RespuestaGet == 6){
						resultado = "Nevadas, poca humedad";
					}
					if(RespuestaGet == 7){
						resultado = "Muy escasas, nevadas en invierno";
					}
					if(RespuestaGet == 8){
						resultado = "Nevadas, insuficientes";
					}
					if(RespuestaGet == 9){
						resultado = "Insuficientes, nieve en invierno, orográficas";
					}
					if(RespuestaGet == 10){
						resultado = "Escasas, en invierno con caída de nieve";
					}
				}
			}
			return resultado;
		}
		protected function update6(event:Event):void
		{
		
			if(EstadoDificultad == 1){
				Tiempo = 60;
				PuntosConseguidos.alpha = 0;
				cuadroDeTexto2.alpha = 0;
				TimeTextField.alpha = 0;
				vidaRectangulo.alpha = 0;
				SimboloDeTiempo.alpha = 0;
			}
			cuadroDeTexto2.mouseEnabled = false;
			vidaRectangulo.y = SimboloDeTiempo.y+25;
			TimeTextField.y = vidaRectangulo.y-7;
			cuadroDeTexto2.x = PuntosConseguidos.x+290;
			cuadroDeTexto2.y = PuntosConseguidos.y+5;
			cuadroDeTexto2.text = puntosPartida.toString();
			cuadroDeTexto.x = highScore.x +60;
			cuadroDeTexto.y = highScore.y +280;
			
			vientoA.x +=30;
			vientoB.x +=30;
			
			climaA.x+=30;
			climaB.x +=30;
			
			rioA.x +=30;
			rioB.x +=30;
			
			category.y -= 8;
			category.x += 8;
			
			highScore.x -= 8;
			highScore.y += 8;
			
			if((highScore.y > 550)&&(category.y<0)){
				if(!( (contains(Pregunta))&& (contains(PreguntaTexto)))){
					
					
					Pregunta.y = 30+40;
					trace("es"+Pregunta.x);
					addChild(Pregunta);
					Swag3= new TextFormat();
					Swag3.size = 20;
					Swag3.align = "center";
					Swag3.font = "verdana";
					
					PreguntaTexto = new TextField();
					
					PreguntaTexto.multiline = true;
					PreguntaTexto.defaultTextFormat = Swag3;
					
					
					PreguntaTexto.textColor = 0x000000;
					PreguntaTexto.wordWrap = true;
					
					PreguntaTexto.height = 1000;
					PreguntaTexto.width =400;
					
					PreguntaTexto.x =200;
					PreguntaTexto.y = 50+40;
					///LIMIT CLASS
					if(CategoriaValue == 1){
						LimitClass =5;
					}
					if(CategoriaValue == 2){
						LimitClass =22;
					}
					if(CategoriaValue == 3){
						LimitClass =4;
					}
					ClassValue = randomRange(1,LimitClass); //Cambiar el máximo x el número de clases en la categoría
					
					/////Limite de cada clase de preguntas
					if(CategoriaValue == 1){
						if(ClassValue == 1){
							LimitQuestion = 4; 
						}
						if(ClassValue == 2){
							LimitQuestion = 6; 
						}
						if(ClassValue == 3){
							LimitQuestion = 4; 
						}
						if(ClassValue == 4){
							LimitQuestion = 4; 
						}
						if(ClassValue == 5){
							LimitQuestion = 3; 
						}
					}
					if(CategoriaValue == 2){
						if(ClassValue == 1){
							LimitQuestion = 1; 
						}
						if(ClassValue == 2){
							LimitQuestion = 1; 
						}
						if(ClassValue == 3){
							LimitQuestion = 1; 
						}
						if(ClassValue == 4){
							LimitQuestion = 1; 
						}
						if(ClassValue == 5){
							LimitQuestion = 1; 
						}
						if(ClassValue == 6){
							LimitQuestion = 1; 
						}
						if(ClassValue == 7){
							LimitQuestion = 1; 
						}
						if(ClassValue == 8){
							LimitQuestion = 1; 
						}
						if(ClassValue == 9){
							LimitQuestion = 1; 
						}
						if(ClassValue == 10){
							LimitQuestion = 1; 
						}
						if(ClassValue == 11){
							LimitQuestion = 1; 
						}
						if(ClassValue == 12){
							LimitQuestion = 1; 
						}
						if(ClassValue == 13){
							LimitQuestion = 1; 
						}
						if(ClassValue == 14){
							LimitQuestion = 1; 
						}
						if(ClassValue == 15){
							LimitQuestion = 1; 
						}
						if(ClassValue == 16){
							LimitQuestion = 1; 
						}
						if(ClassValue == 17){
							LimitQuestion = 1; 
						}
						if(ClassValue == 18){
							LimitQuestion = 1; 
						}
						if(ClassValue == 19){
							LimitQuestion = 1; 
						}
						if(ClassValue == 20){
							LimitQuestion = 1; 
						}
						if(ClassValue == 21){
							LimitQuestion = 1; 
						}
						
					}
					if(CategoriaValue == 3){
						if(ClassValue == 1){
							LimitQuestion = 10; 
						}
						if(ClassValue == 2){
							LimitQuestion = 10; 
						}
						if(ClassValue == 3){
							LimitQuestion = 10; 
						}
						if(ClassValue == 4){
							LimitQuestion = 10; 
						}
					}
					QuestionValue = randomRange(1,LimitQuestion);//Cambiar el máximo  x el número de preguntas en la clase en la categoría
					Pregunta.alpha =0;
					PreguntaTexto.alpha =0;
					PreguntaTexto.mouseEnabled = false;
					PreguntaTexto.text = escribirPregunta(CategoriaValue,ClassValue,QuestionValue);//cambiarPorElMetodo
					addChild(PreguntaTexto);
					/////ADD
					botonConf.alpha = 0;
					botonConf2.alpha = 0;
					addChild(ConfButton);
				///////////RANDOM  RTAS 
					var LimitAnswer:int = LimitQuestion;
					///////////Si hay más respuesas que preguntas
					if(CategoriaValue == 2 ){
						if(ClassValue == 1){
							LimitAnswer= 5; 
						}
						if(ClassValue == 2){
							LimitAnswer= 3; 
						}
						if(ClassValue == 3){
							LimitAnswer= 3; 
						}
						if(ClassValue == 4){
							LimitAnswer= 3; 
						}
						if(ClassValue == 5){
							LimitAnswer= 3; 
						}
						if(ClassValue == 6){
							LimitAnswer= 3; 
						}
						if(ClassValue == 7){
							LimitAnswer= 3; 
						}
						if(ClassValue == 8){
							LimitAnswer= 3; 
						}
						if(ClassValue == 9){
							LimitAnswer= 3; 
						}
						if(ClassValue == 10){
							LimitAnswer= 3; 
						}
						if(ClassValue == 11){
							LimitAnswer= 3; 
						}
						if(ClassValue == 12){
							LimitAnswer= 3; 
						}
						if(ClassValue == 13){
							LimitAnswer= 3; 
						}
						if(ClassValue == 14){
							LimitAnswer= 3; 
						}
						if(ClassValue == 15){
							LimitAnswer= 3; 
						}
						if(ClassValue == 16){
							LimitAnswer= 3; 
						}
						if(ClassValue == 17){
							LimitAnswer= 3; 
						}
						if(ClassValue == 18){
							LimitAnswer= 3; 
						}
						if(ClassValue == 19){
							LimitAnswer= 3; 
						}
						if(ClassValue == 20){
							LimitAnswer= 3; 
						}
						if(ClassValue == 21){
							LimitAnswer= 3; 
						}
					}
					
					RespuestaCorrecta = randomRange(1,3);
					if(RespuestaCorrecta == 1){
						OneRTA = QuestionValue;
						TwoRTA = randomRange(1,LimitAnswer);
						
						while(escribirRespuesta(CategoriaValue,ClassValue,TwoRTA) == escribirRespuesta(CategoriaValue,ClassValue,OneRTA)){
							TwoRTA = randomRange(1,LimitAnswer);
						}
						ThreeRTA = randomRange(1,LimitQuestion);
						while((escribirRespuesta(CategoriaValue,ClassValue,ThreeRTA) == escribirRespuesta(CategoriaValue,ClassValue,TwoRTA))||(escribirRespuesta(CategoriaValue,ClassValue,ThreeRTA) == escribirRespuesta(CategoriaValue,ClassValue,OneRTA))){
							ThreeRTA = randomRange(1,LimitAnswer);
						}
						
					}
					if(RespuestaCorrecta == 2){
						TwoRTA = QuestionValue;
						OneRTA = randomRange(1,LimitAnswer);
						
						while(escribirRespuesta(CategoriaValue,ClassValue,OneRTA) == escribirRespuesta(CategoriaValue,ClassValue,TwoRTA)){
							OneRTA = randomRange(1,LimitAnswer);
						}
						ThreeRTA = randomRange(1,LimitQuestion);
						while((escribirRespuesta(CategoriaValue,ClassValue,ThreeRTA) == escribirRespuesta(CategoriaValue,ClassValue,TwoRTA))||(escribirRespuesta(CategoriaValue,ClassValue,ThreeRTA) == escribirRespuesta(CategoriaValue,ClassValue,OneRTA))){
							ThreeRTA = randomRange(1,LimitAnswer);
						}
						
					}
					if(RespuestaCorrecta == 3){
						ThreeRTA = QuestionValue;
						TwoRTA = randomRange(1,LimitAnswer);
						
						while(escribirRespuesta(CategoriaValue,ClassValue,TwoRTA) == escribirRespuesta(CategoriaValue,ClassValue,ThreeRTA)){
							TwoRTA = randomRange(1,LimitAnswer);
						}
						OneRTA = randomRange(1,LimitQuestion);
						while((escribirRespuesta(CategoriaValue,ClassValue,OneRTA) == escribirRespuesta(CategoriaValue,ClassValue,TwoRTA))||(escribirRespuesta(CategoriaValue,ClassValue,OneRTA) == escribirRespuesta(CategoriaValue,ClassValue,ThreeRTA))){
							OneRTA = randomRange(1,LimitAnswer);
						}
						
					}
					
					
					//1
					///
					RTAButtonA = new SimpleButton();
					RTAButtonA.upState = ARTASprite;
					RTAButtonA.overState = BRTASprite;
					RTAButtonA.downState = ARTASprite
					RTAButtonA.hitTestState = ARTASprite;
					addChild(RTAButtonA);
					RTAButtonA.y = 230+30;//XXXXXXXXXXX
					RTAButtonA.x = 150+1200;//XXXXXXXXXXX
					var sbs:DisplayObjectContainer = DisplayObjectContainer(RTAButtonA.upState);
					
					var tf:TextField = TextField(sbs.getChildByName("textField4"));  
					tf.defaultTextFormat = Swag4;
					tf.wordWrap = true;
					tf.multiline = true;
					tf.text = escribirRespuesta(CategoriaValue,ClassValue,OneRTA);//XXXXXXXXXXX
					tf.width = 500;
					tf.height = Respuesta1.height;
					//2
					RTBButtonA = new SimpleButton();
					RTBButtonA.upState = ARTBSprite ;
					RTBButtonA.overState = BRTBSprite;
					RTBButtonA.downState = ARTBSprite 
					RTBButtonA.hitTestState = ARTBSprite ;
					addChild(RTBButtonA);
					RTBButtonA.y = 230+RTAButtonA.height+10+30;//XXXXXXXXXXX
					RTBButtonA.x = 150+1200;//XXXXXXXXXXX
					var sbs2:DisplayObjectContainer = DisplayObjectContainer(RTBButtonA.upState);
					
					var tf2:TextField = TextField(sbs2.getChildByName("textField3"));  
					tf2.defaultTextFormat = Swag4;
					tf2.wordWrap = true;
					tf2.multiline = true;
					tf2.text = escribirRespuesta(CategoriaValue,ClassValue,TwoRTA);//XXXXXXXXXXX
					tf2.width = 500;
					tf2.height = Respuesta1.height;
					//3
					RTCButtonA = new SimpleButton();
					RTCButtonA.upState = ARTCSprite ;
					RTCButtonA.overState = BRTCSprite;
					RTCButtonA.downState = ARTCSprite 
					RTCButtonA.hitTestState = ARTCSprite ;
					addChild(RTCButtonA);
					RTCButtonA.y = 230+RTAButtonA.height+10+RTAButtonA.height+10+30;//XXXXXXXXXXX
					RTCButtonA.x = 150+1200; //XXXXXXXXXXX
					var sbs3:DisplayObjectContainer = DisplayObjectContainer(RTCButtonA.upState);
					
					var tf3:TextField = TextField(sbs3.getChildByName("textField2")); 
					tf3.defaultTextFormat = Swag4;
					tf3.wordWrap = true;
					tf3.multiline = true;
					tf3.text = escribirRespuesta(CategoriaValue,ClassValue,ThreeRTA);/////////////////XXXXXXXXXXX
					tf3.width = 500;
					tf3.height = Respuesta1.height; 
					//
					
					//
					addChild(RespuestaCorrecta2);
					RespuestaCorrecta2.x =1000;
					addChild(RespuestasIncorrecta1);
					RespuestasIncorrecta2.x =1000;
					addChild(RespuestasIncorrecta2);
					RespuestasIncorrecta1.x =1000;
					
					RTAButtonA.addEventListener(MouseEvent.CLICK,BotonAPresionado);
					RTBButtonA.addEventListener(MouseEvent.CLICK,BotonBPresionado);
					RTCButtonA.addEventListener(MouseEvent.CLICK,BotonCPresionado);
			
					
				
					
				}
				if(RTAButtonA.x > 150){
					RTAButtonA.x -= 75;
				}else{
					if(RTBButtonA.x > 150){
					if(Respuesta1.alpha > 1){
					
						Respuesta1.alpha += 0.2;
						
					}
						RTBButtonA.x -= 75;
					}else{
						if(RTCButtonA.x > 150){
							RTCButtonA.x -= 75;
						}else{
							
							if(Tiempo <10){
								TimeTextField.text=  "0:0"+Tiempo;
							}else{
								
							
								TimeTextField.text=  "0:"+Tiempo;
							}	
								trace("time is " +Tiempo);
								
								
								if(Tiempo >= 1){
									Tiempo -= 0.03;
									vidaRectangulo.width -= 0.7;
									
								}
								if((Tiempo <= 1)||(TimeTextField.text =="0:00")){
									Tiempo = 0;
									JuegoEnCurso == false;
									perderEnable = true; 
								}
								
								if(perderEnable == true){
									trace("perdedor");
									TimeTextField.text=  "0:00";
									vidaRectangulo.width = 0.1;
									stage.removeEventListener(Event.ENTER_FRAME,update6);
									stage.addEventListener(Event.ENTER_FRAME,update7);
									
								
									
								}
							}
						}
					
					}
					
					
				if(ganarEnable == true){
					
					if(RespuestaCorrecta ==1){
						
						RespuestaCorrecta2.x = RTAButtonA.x;
						RespuestaCorrecta2.y = RTAButtonA.y;
						
					}
					if(RespuestaCorrecta ==2){
						
						RespuestaCorrecta2.x = RTBButtonA.x;
						RespuestaCorrecta2.y = RTBButtonA.y;
					
					}
					if(RespuestaCorrecta ==3){
					
						RespuestaCorrecta2.x = RTCButtonA.x;
						RespuestaCorrecta2.y = RTCButtonA.y;
					
					}
				}
				if(perderSinMorir == true){
					if(RespuestaCorrecta ==1){
					
						RespuestasIncorrecta1.x = RTBButtonA.x;
						RespuestasIncorrecta1.y = RTBButtonA.y;
					
						RespuestasIncorrecta2.x = RTCButtonA.x;
						RespuestasIncorrecta2.y = RTCButtonA.y;
					}
					if(RespuestaCorrecta ==2){
						
						RespuestasIncorrecta1.x = RTAButtonA.x;
						RespuestasIncorrecta1.y = RTAButtonA.y;
						
						RespuestasIncorrecta2.x = RTCButtonA.x;
						RespuestasIncorrecta2.y = RTCButtonA.y;
					}
					if(RespuestaCorrecta ==3){
					
						RespuestasIncorrecta1.x = RTAButtonA.x;
						RespuestasIncorrecta1.y = RTAButtonA.y;
					
						RespuestasIncorrecta2.x = RTBButtonA.x;
						RespuestasIncorrecta2.y = RTBButtonA.y;
					}
				}
				if(botonConf.alpha < 1){
					botonConf.alpha += 0.04;
					botonConf2.alpha += 0.04;
				}
				if(Pregunta.alpha <= 1){
					
					Pregunta.alpha += 0.02;
					PreguntaTexto.alpha += 0.02;
					
				}
				if(Pregunta.x < 165){
					Pregunta.x += 15;
				}
				
				if(PuntosConseguidos.y < -10){
					PuntosConseguidos.y += 5;
				}
				if(SimboloDeTiempo.y > 490){
					SimboloDeTiempo.y -= 10;
				}
				PreguntaTexto.x = Pregunta.x +20;
			}
			
		}
		
		private function perderTristemente():void
		{
			perderSinMorir = true;
			if(EstadoDificultad == 2){
				if(Tiempo > 15){
					Tiempo-=15; 
					vidaRectangulo.width -= 350;
				}else{
					vidaRectangulo.width = 1;
					Tiempo = 0;
					perderEnable = true;
					
				}
			}
			if(EstadoDificultad == 3){
				if(Tiempo > 10){
					Tiempo-=10; 
					vidaRectangulo.width -= 233,3 ;
				}else{
					vidaRectangulo.width = 1;
					Tiempo = 0;
					perderEnable = true;
				}
				
			}
			if(EstadoDificultad == 4){
				vidaRectangulo.width = 1;
				Tiempo = 0;
				perderEnable = true;
			}
			if(EstadoDificultad == 1){
				if(Tiempo > 15){
					Tiempo-=15; 
					vidaRectangulo.width -= 350;
				}else{
					vidaRectangulo.width = 1;
					Tiempo = 0;
					perderEnable = true;
					
				}
			}
			if(RespuestaCorrecta ==1){
			
				RespuestasIncorrecta1.x = RTBButtonA.x;
				RespuestasIncorrecta1.y = RTBButtonA.y;
			
				RespuestasIncorrecta2.x = RTCButtonA.x;
				RespuestasIncorrecta2.y = RTCButtonA.y;
			}
			if(RespuestaCorrecta ==2){
				
				RespuestasIncorrecta1.x = RTAButtonA.x;
				RespuestasIncorrecta1.y = RTAButtonA.y;
				
				RespuestasIncorrecta2.x = RTCButtonA.x;
				RespuestasIncorrecta2.y = RTCButtonA.y;
			}
			if(RespuestaCorrecta ==3){
			
				RespuestasIncorrecta1.x = RTAButtonA.x;
				RespuestasIncorrecta1.y = RTAButtonA.y;
			
				RespuestasIncorrecta2.x = RTBButtonA.x;
				RespuestasIncorrecta2.y = RTBButtonA.y;
			}
		}
		protected function CategoriaVientoIniciado(event:MouseEvent):void
		{	
			if(EstadoDificultad == 2){
			Tiempo = 30;
		    }
			if(EstadoDificultad == 3){
				Tiempo = 15;
			}
			if(EstadoDificultad == 4){
				Tiempo = 15;
			}
			CategoriaValue = 1;
			stage.removeEventListener(Event.ENTER_FRAME,update5);
			stage.addEventListener(Event.ENTER_FRAME,update6);
			
		}
		
		protected function CategoriaRioIniciado(event:MouseEvent):void
		{
			if(EstadoDificultad == 2){
				Tiempo = 30;
			}
			if(EstadoDificultad == 3){
				Tiempo = 15;
			}
			if(EstadoDificultad == 4){
				Tiempo = 15;
			}
			CategoriaValue = 2;
			stage.removeEventListener(Event.ENTER_FRAME,update5);
			stage.addEventListener(Event.ENTER_FRAME,update6);
			
		}
		
		protected function CategoriaClimaIniciado(event:MouseEvent):void
		{
			if(EstadoDificultad == 2){
			Tiempo = 30;
		}
			if(EstadoDificultad == 3){
				Tiempo = 15;
			}
			if(EstadoDificultad == 4){
				Tiempo = 15;
			}
			CategoriaValue = 3;
			trace("hola");
			stage.removeEventListener(Event.ENTER_FRAME,update5);
			stage.addEventListener(Event.ENTER_FRAME,update6);
			
		}
	
		
		protected function BotonCPresionado(event:MouseEvent):void
		{
			if(Corregir(CategoriaValue,ClassValue,QuestionValue,ThreeRTA) == true){
				trace("Ganaste");
				if(ganarEnable== false){
					ganarAlegremente();
				}
				puntosPartida += 10;
			

			}else{
				if(Tiempo <= 0){
					vidaRectangulo.width = 1;
					Tiempo = 0;
				}
				trace("Perdiste");perderTristemente();
			}
			
		}
		
		protected function BotonBPresionado(event:MouseEvent):void
		{
			if(Corregir(CategoriaValue,ClassValue,QuestionValue,TwoRTA) == true){
				
				if(ganarEnable== false){
					ganarAlegremente();
				}
			}else{
				if(Tiempo <= 0){
				vidaRectangulo.width = 1;
				Tiempo = 0;
			}
				trace("Perdiste");perderTristemente();
			}
		}
		
		protected function BotonAPresionado(event:MouseEvent):void
		{
			if(Corregir(CategoriaValue,ClassValue,QuestionValue,OneRTA) == true){
				
				if(ganarEnable== false){
					ganarAlegremente();
				}
				trace("Ganaste");
			}else{
				if(Tiempo <= 0){
					vidaRectangulo.width = 1;
					Tiempo = 0;
				}
				trace("Perdiste");perderTristemente();
			}
		}		
		
		private function ganarAlegremente():void
		{
			ganarEnable = true;
			if(EstadoDificultad == 2){
				puntosPartida += 5;
				Tiempo += 10;
				vidaRectangulo.width += 233;
			}
			if(EstadoDificultad == 3){
				puntosPartida += 50;
				Tiempo += 15;
				vidaRectangulo.width += 350;
			}
			if(EstadoDificultad == 4){
				Tiempo = 15;
				TimeTextField.text = "0:"+Tiempo.toString();
				vidaRectangulo.width = 350;
				puntosPartida += 100;
			}
			cuadroDeTexto2.text = puntosPartida.toString();
			if(RespuestaCorrecta == 1){
			
				RespuestaCorrecta2.x = RTAButtonA.x;
				RespuestaCorrecta2.y = RTAButtonA.y;
			}
			if(RespuestaCorrecta == 2){
				
				RespuestaCorrecta2.x = RTBButtonA.x;
				RespuestaCorrecta2.y = RTBButtonA.y;
			}
			if(RespuestaCorrecta == 3){
			
				RespuestaCorrecta2.x = RTCButtonA.x;
				RespuestaCorrecta2.y = RTCButtonA.y;
				
			}
			stage.removeEventListener(Event.ENTER_FRAME,update6);
			stage.addEventListener(Event.ENTER_FRAME,update7);
			
		}
		protected function Corregir(CategoríaGet:int, ClassGet:int,PreguntaGet:int, RespuestaGet:int):Boolean
		{	
			var result:Boolean = false;
			
			if(PreguntaGet == RespuestaGet){
				result = true;
				
			}
			
			
			return result;
		}		
		private var contadorXXX:Number = 0;
		protected function update7(event:Event):void
		{
			
			if(!(contains(bg2))){
				
				if(perderEnable == true){
					trace("octubre perderdor");
					trace("tus puntos son" +puntosPartida);
					
					addChild(perdiste);
					addChild(volverButon);
					addChild(textttt);
					volverButon.x = 400-(volverButon.width/2);
					volverButon.y = 450;
					volverButon.alpha= 0;
					perdiste.alpha = 0;
					perdiste.x = 400-(perdiste.width/2);
					perdiste.y = 300-(perdiste.height/2);
					textttt.alpha = 0;
					
				}
				
				addChild(bg2);
				Swag2= new TextFormat();
				Swag2.size = 40;
				Swag2.align = "center";
				Swag2.font = "verdana";
				
				
				
				
				
				if(!(contains(mano))){
					addChild(mano);
				}
				mano.x = -mano.width;
				mano.y = 200;
				bg2.alpha = 0;
				if(!(contains(logo))){
					addChild(logo);
				}
				
				logo.x = 400-(logo.width/2)
				logo.y = -logo.width;
			}
			
		
			if(bg2.alpha < 1){
				textttt.alpha += 0.04;
				bg2.alpha += 0.02;
				bg2.alpha += 0.02;
			}else{
				if(logo.y < logo.height-250){
					logo.y += 10;
				}
				if(mano.x < mano.width-250 ){
					mano.x += 10;
				}else{
				
				}
				
				if(contains(RTAButtonA)){
					removeChild(RTAButtonA);
					
				}
				if(contains(RTBButtonA)){
					removeChild(RTBButtonA);
					
				}
				if(contains(RTCButtonA)){
					removeChild(RTCButtonA);
					
				}contadorXXX += 0.03;
				if(contains(ConfButton)){
					removeChild(ConfButton);
					
				}
				if(contains(PreguntaTexto)){
					removeChild(PreguntaTexto);
					
				}
				if(contains(RespuestasIncorrecta1)){
					removeChild(RespuestasIncorrecta1);
					
				}
				if(contains(RespuestasIncorrecta2)){
					removeChild(RespuestasIncorrecta2);
					
				}
				if(contains(RespuestaCorrecta2)){
					removeChild(RespuestaCorrecta2);
					
				}
				if(contains(Pregunta)){
					removeChild(Pregunta);
					
				}
				if(contains(SimboloDeTiempo)){
					removeChild(SimboloDeTiempo);
					
				}
				if(contains(vidaRectangulo)){
					removeChild(vidaRectangulo);
					
				}
				if(contains(TimeTextField)){
					removeChild(TimeTextField);
					
				}
				if(contains(cuadroDeTexto2)){
					removeChild(cuadroDeTexto2);
					
				}
				if(contains(PuntosConseguidos)){
					removeChild(PuntosConseguidos);
					
				}
				
				
			}
			if(contadorXXX > 2){
				
				
				stage.addEventListener(Event.ENTER_FRAME,update8);
			}
			
		}
		
		protected function update8(event:Event):void
		{
			stage.removeEventListener(Event.ENTER_FRAME,update7);
			
			
			
			
			if(bg2.alpha > 0){
				
				perdiste.alpha = 1;
				volverButon.addEventListener(MouseEvent.CLICK,volviendo);
				volverButon.alpha= 1;
				bg2.alpha -= 0.05;
				logo.alpha -= 0.05;
				mano.alpha -= 0.05;
				
			}else{
				if(ganarEnable == true){
					restaur();
					
					
				}
			}
			
			
		}
		
		private function restaur():void
		{
			mano.alpha = 1;
			logo.alpha = 1;
		
			stage.removeEventListener(Event.ENTER_FRAME,update8);
			ganarEnable = false;
			perderEnable = false;
			perderSinMorir = false;
			JuegoEnCurso = true;
			stage.addEventListener(Event.ENTER_FRAME,update6);
			contadorXXX = 0;
			addChild(PuntosConseguidos);
			addChild(cuadroDeTexto2);
			addChild(vidaRectangulo);
			addChild(SimboloDeTiempo);
			addChild(TimeTextField);
			if(contains(volverButon)){
				removeChild(volverButon);
			}
			if(contains(bg2)){
				removeChild(bg2);
			}
			if(contains(logo)){
				removeChild(logo);
			}
			if(contains(mano)){
				removeChild(mano);
			}
			if(contains(perdiste)){
				removeChild(perdiste);
			}
			
		}
		
		protected function volviendo(event:MouseEvent):void
		{
			
			if(contains(volverButon)){
				removeChild(volverButon);
			}
			if(contains(bg2)){
				removeChild(bg2);
			}
			if(contains(logo)){
				removeChild(logo);
			}
			if(contains(mano)){
				removeChild(mano);
			}
			if(contains(perdiste)){
				removeChild(perdiste);
			}
			
			
		}
		
		
	}
}