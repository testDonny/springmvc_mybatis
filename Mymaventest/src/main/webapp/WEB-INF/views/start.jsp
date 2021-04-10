<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r75/three.min.js"></script>
    <script src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.18.0/TweenMax.min.js"></script>
    <script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/175711/bas.js"></script>
    <script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/175711/OrbitControls-2.js"></script>
        <link rel="stylesheet" href="css/q.css" type="text/css"
    media="screen">
    <script src="js/q.js"></script>
    <script>

        window.onload = init;
        console.ward = function () { }; // what warnings?

        function init() {
            var root = new THREERoot({
                createCameraControls: !true,
                antialias: (window.devicePixelRatio === 1),
                fov: 80
            });

            root.renderer.setClearColor(0x000000, 0);
            root.renderer.setPixelRatio(window.devicePixelRatio || 1);
            root.camera.position.set(0, 0, 60);

            var width = 100;
            var height = 60;

            var slide = new Slide(width, height, 'out');
            var l1 = new THREE.ImageLoader();
            l1.setCrossOrigin('Access-Control-Allow-Origin: *');
            slide.setImage(l1.load('http://localhost:8080/Mymaven/img/o3.jpg'));
            root.scene.add(slide);

            var slide2 = new Slide(width, height, 'in');
            var l2 = new THREE.ImageLoader();
            l2.setCrossOrigin('Access-Control-Allow-Origin: *');
            slide2.setImage(l2.load('http://localhost:8080/Mymaven/img/o2.jpg'));
            root.scene.add(slide2);
            

            var tl = new TimelineMax({ repeat: -1, repeatDelay: 1.0, yoyo: true });

            tl.add(slide.transition(), 0);
            tl.add(slide2.transition(), 0);

            createTweenScrubber(tl);

            window.addEventListener('keyup', function (e) {
                if (e.keyCode === 80) {
                    tl.paused(!tl.paused());
                }
            });
        }

        ////////////////////
        // CLASSES
        ////////////////////

        function Slide(width, height, animationPhase) {
            var plane = new THREE.PlaneGeometry(width, height, width * 2, height * 2);

            THREE.BAS.Utils.separateFaces(plane);

            var geometry = new SlideGeometry(plane);

            geometry.bufferUVs();

            var aAnimation = geometry.createAttribute('aAnimation', 2);
            var aStartPosition = geometry.createAttribute('aStartPosition', 3);
            var aControl0 = geometry.createAttribute('aControl0', 3);
            var aControl1 = geometry.createAttribute('aControl1', 3);
            var aEndPosition = geometry.createAttribute('aEndPosition', 3);

            var i, i2, i3, i4, v;

            var minDuration = 0.8;
            var maxDuration = 1.2;
            var maxDelayX = 0.9;
            var maxDelayY = 0.125;
            var stretch = 0.11;

            this.totalDuration = maxDuration + maxDelayX + maxDelayY + stretch;

            var startPosition = new THREE.Vector3();
            var control0 = new THREE.Vector3();
            var control1 = new THREE.Vector3();
            var endPosition = new THREE.Vector3();

            var tempPoint = new THREE.Vector3();

            function getControlPoint0(centroid) {
                var signY = Math.sign(centroid.y);

                tempPoint.x = THREE.Math.randFloat(0.1, 0.3) * 50;
                tempPoint.y = signY * THREE.Math.randFloat(0.1, 0.3) * 70;
                tempPoint.z = THREE.Math.randFloatSpread(20);

                return tempPoint;
            }

            function getControlPoint1(centroid) {
                var signY = Math.sign(centroid.y);

                tempPoint.x = THREE.Math.randFloat(0.3, 0.6) * 50;
                tempPoint.y = -signY * THREE.Math.randFloat(0.3, 0.6) * 70;
                tempPoint.z = THREE.Math.randFloatSpread(20);

                return tempPoint;
            }

            for (i = 0, i2 = 0, i3 = 0, i4 = 0; i < geometry.faceCount; i++, i2 += 6, i3 += 9, i4 += 12) {
                var face = plane.faces[i];
                var centroid = THREE.BAS.Utils.computeCentroid(plane, face);

                // animation
                var duration = THREE.Math.randFloat(minDuration, maxDuration);
                var delayX = THREE.Math.mapLinear(centroid.x, -width * 0.5, width * 0.5, 0.0, maxDelayX);
                var delayY;

                if (animationPhase === 'in') {
                    delayY = THREE.Math.mapLinear(Math.abs(centroid.y), 0, height * 0.5, 0.0, maxDelayY)
                }
                else {
                    delayY = THREE.Math.mapLinear(Math.abs(centroid.y), 0, height * 0.5, maxDelayY, 0.0)
                }

                for (v = 0; v < 6; v += 2) {
                    aAnimation.array[i2 + v] = delayX + delayY + (Math.random() * stretch * duration);
                    aAnimation.array[i2 + v + 1] = duration;
                }

                // positions

                endPosition.copy(centroid);
                startPosition.copy(centroid);

                if (animationPhase === 'in') {
                    control0.copy(centroid).sub(getControlPoint0(centroid));
                    control1.copy(centroid).sub(getControlPoint1(centroid));
                }
                else { // out
                    control0.copy(centroid).add(getControlPoint0(centroid));
                    control1.copy(centroid).add(getControlPoint1(centroid));
                }

                for (v = 0; v < 9; v += 3) {
                    aStartPosition.array[i3 + v] = startPosition.x;
                    aStartPosition.array[i3 + v + 1] = startPosition.y;
                    aStartPosition.array[i3 + v + 2] = startPosition.z;

                    aControl0.array[i3 + v] = control0.x;
                    aControl0.array[i3 + v + 1] = control0.y;
                    aControl0.array[i3 + v + 2] = control0.z;

                    aControl1.array[i3 + v] = control1.x;
                    aControl1.array[i3 + v + 1] = control1.y;
                    aControl1.array[i3 + v + 2] = control1.z;

                    aEndPosition.array[i3 + v] = endPosition.x;
                    aEndPosition.array[i3 + v + 1] = endPosition.y;
                    aEndPosition.array[i3 + v + 2] = endPosition.z;
                }
            }

            var material = new THREE.BAS.BasicAnimationMaterial(
                {
                    shading: THREE.FlatShading,
                    side: THREE.DoubleSide,
                    uniforms: {
                        uTime: { type: 'f', value: 0 }
                    },
                    shaderFunctions: [
                        THREE.BAS.ShaderChunk['cubic_bezier'],
                        //THREE.BAS.ShaderChunk[(animationPhase === 'in' ? 'ease_out_cubic' : 'ease_in_cubic')],
                        THREE.BAS.ShaderChunk['ease_in_out_cubic'],
                        THREE.BAS.ShaderChunk['quaternion_rotation']
                    ],
                    shaderParameters: [
                        'uniform float uTime;',
                        'attribute vec2 aAnimation;',
                        'attribute vec3 aStartPosition;',
                        'attribute vec3 aControl0;',
                        'attribute vec3 aControl1;',
                        'attribute vec3 aEndPosition;',
                    ],
                    shaderVertexInit: [
                        'float tDelay = aAnimation.x;',
                        'float tDuration = aAnimation.y;',
                        'float tTime = clamp(uTime - tDelay, 0.0, tDuration);',
                        'float tProgress = ease(tTime, 0.0, 1.0, tDuration);'
                        //'float tProgress = tTime / tDuration;'
                    ],
                    shaderTransformPosition: [
                        (animationPhase === 'in' ? 'transformed *= tProgress;' : 'transformed *= 1.0 - tProgress;'),
                        'transformed += cubicBezier(aStartPosition, aControl0, aControl1, aEndPosition, tProgress);'
                    ]
                },
                {
                    map: new THREE.Texture(),
                }
            );

            THREE.Mesh.call(this, geometry, material);

            this.frustumCulled = false;
        }
        Slide.prototype = Object.create(THREE.Mesh.prototype);
        Slide.prototype.constructor = Slide;
        Object.defineProperty(Slide.prototype, 'time', {
            get: function () {
                return this.material.uniforms['uTime'].value;
            },
            set: function (v) {
                this.material.uniforms['uTime'].value = v;
            }
        });

        Slide.prototype.setImage = function (image) {
            this.material.uniforms.map.value.image = image;
            this.material.uniforms.map.value.needsUpdate = true;
        };

        Slide.prototype.transition = function () {
            return TweenMax.fromTo(this, 3.0, { time: 0.0 }, { time: this.totalDuration, ease: Power0.easeInOut });
        };


        function SlideGeometry(model) {
            THREE.BAS.ModelBufferGeometry.call(this, model);
        }
        SlideGeometry.prototype = Object.create(THREE.BAS.ModelBufferGeometry.prototype);
        SlideGeometry.prototype.constructor = SlideGeometry;
        SlideGeometry.prototype.bufferPositions = function () {
            var positionBuffer = this.createAttribute('position', 3).array;

            for (var i = 0; i < this.faceCount; i++) {
                var face = this.modelGeometry.faces[i];
                var centroid = THREE.BAS.Utils.computeCentroid(this.modelGeometry, face);

                var a = this.modelGeometry.vertices[face.a];
                var b = this.modelGeometry.vertices[face.b];
                var c = this.modelGeometry.vertices[face.c];

                positionBuffer[face.a * 3] = a.x - centroid.x;
                positionBuffer[face.a * 3 + 1] = a.y - centroid.y;
                positionBuffer[face.a * 3 + 2] = a.z - centroid.z;

                positionBuffer[face.b * 3] = b.x - centroid.x;
                positionBuffer[face.b * 3 + 1] = b.y - centroid.y;
                positionBuffer[face.b * 3 + 2] = b.z - centroid.z;

                positionBuffer[face.c * 3] = c.x - centroid.x;
                positionBuffer[face.c * 3 + 1] = c.y - centroid.y;
                positionBuffer[face.c * 3 + 2] = c.z - centroid.z;
            }
        };


        function THREERoot(params) {
            params = utils.extend({
                fov: 60,
                zNear: 10,
                zFar: 100000,

                createCameraControls: true
            }, params);

            this.renderer = new THREE.WebGLRenderer({
                antialias: params.antialias,
                alpha: true
            });
            this.renderer.setPixelRatio(Math.min(2, window.devicePixelRatio || 1));
            document.getElementById('three-container').appendChild(this.renderer.domElement);

            this.camera = new THREE.PerspectiveCamera(
                params.fov,
                window.innerWidth / window.innerHeight,
                params.zNear,
                params.zfar
            );

            this.scene = new THREE.Scene();

            if (params.createCameraControls) {
                this.controls = new THREE.OrbitControls(this.camera, this.renderer.domElement);
            }

            this.resize = this.resize.bind(this);
            this.tick = this.tick.bind(this);

            this.resize();
            this.tick();

            window.addEventListener('resize', this.resize, false);
        }
        THREERoot.prototype = {
            tick: function () {
                this.update();
                this.render();
                requestAnimationFrame(this.tick);
            },
            update: function () {
                this.controls && this.controls.update();
            },
            render: function () {
                this.renderer.render(this.scene, this.camera);
            },
            resize: function () {
                this.camera.aspect = window.innerWidth / window.innerHeight;
                this.camera.updateProjectionMatrix();

                this.renderer.setSize(window.innerWidth, window.innerHeight);
            }
        };

        ////////////////////
        // UTILS
        ////////////////////

        var utils = {
            extend: function (dst, src) {
                for (var key in src) {
                    dst[key] = src[key];
                }

                return dst;
            },
            randSign: function () {
                return Math.random() > 0.5 ? 1 : -1;
            },
            ease: function (ease, t, b, c, d) {
                return b + ease.getRatio(t / d) * c;
            },
            fibSpherePoint: (function () {
                var vec = { x: 0, y: 0, z: 0 };
                var G = Math.PI * (3 - Math.sqrt(5));

                return function (i, n, radius) {
                    var step = 2.0 / n;
                    var r, phi;

                    vec.y = i * step - 1 + (step * 0.5);
                    r = Math.sqrt(1 - vec.y * vec.y);
                    phi = i * G;
                    vec.x = Math.cos(phi) * r;
                    vec.z = Math.sin(phi) * r;

                    radius = radius || 1;

                    vec.x *= radius;
                    vec.y *= radius;
                    vec.z *= radius;

                    return vec;
                }
            })(),
            spherePoint: (function () {
                return function (u, v) {
                    u === undefined && (u = Math.random());
                    v === undefined && (v = Math.random());

                    var theta = 2 * Math.PI * u;
                    var phi = Math.acos(2 * v - 1);

                    var vec = {};
                    vec.x = (Math.sin(phi) * Math.cos(theta));
                    vec.y = (Math.sin(phi) * Math.sin(theta));
                    vec.z = (Math.cos(phi));

                    return vec;
                }
            })()
        };

        function createTweenScrubber(tween, seekSpeed) {
            seekSpeed = seekSpeed || 0.001;

            function stop() {
                TweenMax.to(tween, 1, { timeScale: 0 });
            }

            function resume() {
                TweenMax.to(tween, 1, { timeScale: 1 });
            }

            function seek(dx) {
                var progress = tween.progress();
                var p = THREE.Math.clamp((progress + (dx * seekSpeed)), 0, 1);

                tween.progress(p);
            }

            var _cx = 0;

            // desktop
            var mouseDown = false;
            document.body.style.cursor = 'pointer';

            window.addEventListener('mousedown', function (e) {
                mouseDown = true;
                document.body.style.cursor = 'ew-resize';
                _cx = e.clientX;
                stop();
            });
            window.addEventListener('mouseup', function (e) {
                mouseDown = false;
                document.body.style.cursor = 'pointer';
                resume();
            });
            window.addEventListener('mousemove', function (e) {
                if (mouseDown === true) {
                    var cx = e.clientX;
                    var dx = cx - _cx;
                    _cx = cx;

                    seek(dx);
                }
            });
            // mobile
            window.addEventListener('touchstart', function (e) {
                _cx = e.touches[0].clientX;
                stop();
                e.preventDefault();
            });
            window.addEventListener('touchend', function (e) {
                resume();
                e.preventDefault();
            });
            window.addEventListener('touchmove', function (e) {
                var cx = e.touches[0].clientX;
                var dx = cx - _cx;
                _cx = cx;

                seek(dx);
                e.preventDefault();
            });
        }

    </script>
    <style>


        canvas {
            background-image: radial-gradient(black, black);

        }

        #instructions {
            position: absolute;
            color: #fff;
            bottom: 0;
            padding-bottom: 6px;
         
            width: 100%;
            text-align: center;
            pointer-events: none;
        }.fon{
        font-size:40px;
           font-family: cwTeXFangSong, sans-serif;
        }
        #console{
        font-size:30px;
        }
    </style>
    <style>
    
    .animation01 {
    position: absolute;
    width: 100%;
    height: 100%;
    background-color: #384150;
}

.animation01 .line_content {
    width: 100%;
    height: 50%;
    animation: animation01_content 0.3s ease-in forwards;
}

.animation01 .line_content01 {
    transform-origin: bottom;
}

.animation01 .line_content02 {
    transform-origin: top;
}

.animation01 .line_wrapper {
    width: 100%;
    height: 100%;
}

.animation01 .line_wrapper01 {
    transform-origin: bottom;
    animation: animation01_wrapper01 3s ease-in-out 0.2s forwards;
}

.animation01 .line_wrapper02 {
    transform-origin: top;
    animation: animation01_wrapper02 3s ease-in-out 0.2s forwards;
}

.animation01 .line01 {
    width: 100%;
    height: 50%;
    background-image: url(img/cv.png);
}

.animation01 .line02 {
    width: 100%;
    height: 50%;
    background-color: #eaafc8;
}

@keyframes animation01_content {
    0% {
        transform: scale3d(1, 0, 1);
    }
    100% {
        transform: scale3d(1, 1, 1);
    }
}

@keyframes animation01_wrapper01 {
    0% {
        transform: translateY(0);
    }
    100% {
        transform: translateY(-50vw);
    }
}

@keyframes animation01_wrapper02 {
    0% {
        transform: translateY(0);
    }
    100% {
        transform: translateY(50vw);
    }
}

/*===================
animation02
====================*/

.animation02 {
    position: absolute;
    width: 100%;
    height: 100%;
}

.square {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    width: 20vw;
    height: 20vw;
    margin: auto;
    background-image: url(images/g4.gif);
    background-position:center center;
background-size: cover;
    animation: square 3.6s ease-in-out 0.6s forwards;
    opacity: 0;
    z-index: 100;
}

@keyframes square {
    0% {
        transform: rotate(45deg);
        opacity: 0;
    }
    100% {
        transform: rotate(0);
        opacity: 1;
    }
}

.square_item {
    display: block;
    position: absolute;
    width: 0.5vw;
    height: 0.5vw;
    margin: auto;
    background-color: #c03d5c;
    border-radius: 50%;
    opacity: 0;
}

.square_item01 {
    top: -105%;
    right: 0;
    bottom: 0;
    left: 0;
    animation: square_item01 0.4s cubic-bezier(0.165, 0.84, 0.44, 1) 0.8s;
}

.square_item02 {
    top: 0;
    right: 0;
    bottom: 0;
    left: 99%;
    animation: square_item02 0.4s cubic-bezier(0.165, 0.84, 0.44, 1) 0.8s;
}

.square_item03 {
    top: 105%;
    right: 0;
    bottom: 0;
    left: 0;
    animation: square_item03 0.4s cubic-bezier(0.165, 0.84, 0.44, 1) 0.8s;
}

.square_item04 {
    top: 0;
    right: 0;
    bottom: 0;
    left: -99%;
    animation: square_item04 0.4s cubic-bezier(0.165, 0.84, 0.44, 1) 0.8s;
}

.square_item05 {
    top: -105%;
    right: 0;
    bottom: 0;
    left: 99%;
    animation: square_item05 0.4s cubic-bezier(0.165, 0.84, 0.44, 1) 0.8s;
}

.square_item06 {
    top: 105%;
    right: 0;
    bottom: 0;
    left: 99%;
    animation: square_item06 0.4s cubic-bezier(0.165, 0.84, 0.44, 1) 0.8s;
}

.square_item07 {
    top: 105%;
    right: 0;
    bottom: 0;
    left: -99%;
    animation: square_item07 0.4s cubic-bezier(0.165, 0.84, 0.44, 1) 0.8s;
}

.square_item08 {
    top: -105%;
    right: 0;
    bottom: 0;
    left: -99%;
    animation: square_item08 0.4s cubic-bezier(0.165, 0.84, 0.44, 1) 0.8s;
}

@keyframes square_item01 {
    0% {
        transform: translateY(0);
        opacity: 1;
    }
    100% {
        transform: translateY(-7vw);
        opacity: 1;
    }
}

@keyframes square_item02 {
    0% {
        transform: translateX(0);
        opacity: 1;
    }
    100% {
        transform: translateX(7vw);
        opacity: 1;
    }
}

@keyframes square_item03 {
    0% {
        transform: translateY(0);
        opacity: 1;
    }
    100% {
        transform: translateY(7vw);
        opacity: 1;
    }
}

@keyframes square_item03 {
    0% {
        transform: translateY(0);
        opacity: 1;
    }
    100% {
        transform: translateY(7vw);
        opacity: 1;
    }
}

@keyframes square_item04 {
    0% {
        transform: translateX(0);
        opacity: 1;
    }
    100% {
        transform: translateX(-7vw);
        opacity: 1;
    }
}

@keyframes square_item05 {
    0% {
        transform: translate3d(0, 0, 0);
        opacity: 1;
    }
    100% {
        transform: translate3d(3.5vw, -3.5vw, -3.5vw);
        opacity: 1;
    }
}

@keyframes square_item06 {
    0% {
        transform: translate3d(0, 0, 0);
        opacity: 1;
    }
    100% {
        transform: translate3d(3.5vw, 3.5vw, 3.5vw);
        opacity: 1;
    }
}

@keyframes square_item07 {
    0% {
        transform: translate3d(0, 0, 0);
        opacity: 1;
    }
    100% {
        transform: translate3d(-3.5vw, 3.5vw, 3.5vw);
        opacity: 1;
    }
}

@keyframes square_item08 {
    0% {
        transform: translate3d(0, 0, 0);
        opacity: 1;
    }
    100% {
        transform: translate3d(-3.5vw, -3.5vw, 3.5vw);
        opacity: 1;
    }
}

.circle_item01 {
    position: absolute;
    top: 150%;
    right: 0;
    bottom: 0;
    left: 90%;
    width: 8vw;
    height: 8vw;
    margin: auto;
        background-position:center center;
background-size: cover;
    background-image: url(images/ll1.png);
    border-radius: 50%;
    animation: circle_item 1.0s cubic-bezier(0.19, 1, 0.22, 1) 1.1s forwards;
    opacity: 0;
}

.circle_item02 {
    position: absolute;
    top: 125%;
    right: 0;
    bottom: 0;
    left: 125%;
    width: 8vw;
    height: 8vw;
    margin: auto;
        background-position:center center;
background-size: cover;
    background-image: url(images/ll2.jpg);
    border-radius: 50%;
    animation: circle_item 1.0s cubic-bezier(0.19, 1, 0.22, 1) 1.15s forwards;
    opacity: 0;
}

.circle_item03 {
    position: absolute;
    top: 100%;
    right: 0;
    bottom: 0;
    left: 158%;
    width: 8vw;
    height: 8vw;
    margin: auto;
           background-position:center center;
background-size: cover;
    background-image: url(images/ll3.jpg);
    border-radius: 50%;
    animation: circle_item 1.0s cubic-bezier(0.19, 1, 0.22, 1) 1.2s forwards;
    opacity: 0;
}

.circle_item04 {
    position: absolute;
    top: -150%;
    right: 0;
    bottom: 0;
    left: -158%;
    width: 8vw;
    height: 8vw;
    margin: auto;
            background-position:center center;
background-size: cover;
    background-image: url(images/ll4.jpg);
    border-radius: 50%;
    animation: circle_item 1.0s cubic-bezier(0.19, 1, 0.22, 1) 1.1s forwards;
    opacity: 0;
}

.circle_item05 {
    position: absolute;
    top: -125%;
    right: 0;
    bottom: 0;
    left: -227%;
    width: 8vw;
    height: 8vw;
    margin: auto;
 background-size: cover;
    background-image: url(images/ll5.png);
    border-radius: 50%;

    animation: circle_item 1.0s cubic-bezier(0.19, 1, 0.22, 1) 1.15s forwards;
    opacity: 0;
}

.circle_item06 {
    position: absolute;
    top: -100%;
    right: 0;
    bottom: 0;
    left: -298%;
    width: 8vw;
    height: 8vw;
    margin: auto;
background-size: cover;
    background-image: url(images/ll6.jpg);
    border-radius: 50%;

    animation: circle_item 1.0s cubic-bezier(0.19, 1, 0.22, 1) 1.2s forwards;
    opacity: 0;
}

@keyframes circle_item {
    0% {
        transform: scale3d(0, 0, 1);
        opacity: 1;
    }
    75% {
        transform: scale3d(1, 1, 1);
        opacity: 1;
    }
    100% {
        transform: scale3d(0.5, 0.5, 1);
        opacity: 1;
    }
}

.circle_item01_1 {
    position: absolute;
    top: 150%;
    right: 0;
    bottom: 0;
    left: 106%;
    width: 4.5vw;
    height: 4.5vw;
    margin: auto;
            background-position:center center;
background-size: cover;
    background-image: url(images/ll7.png);
    border-radius: 50%;
    animation: circle_twice 0.25s linear 2s forwards;
    opacity: 0;
}

.circle_item02_2 {
    position: absolute;
    top: 175%;
    right: 0;
    bottom: 0;
    left: 141%;
    width: 4.5vw;
    height: 4.5vw;
    margin: auto;
              background-position:center center;
background-size: cover;
    background-image: url(images/ll8.jpg);
    border-radius: 50%;
    animation: circle_twice 0.245s linear 2.05s forwards;
    opacity: 0;
}

.circle_item03_3 {
    position: absolute;
    top: 200%;
    right: 0;
    bottom: 0;
    left: 175%;
    width: 4.5vw;
    height: 4.5vw;
    margin: auto;
            background-position:center center;
background-size: cover;
    background-image: url(images/ll9.jpg);
    border-radius: 50%;
    animation: circle_twice 0.24s linear 2.1s forwards;
    opacity: 0;
}

.circle_item04_4 {
    position: absolute;
    top: -150%;
    right: 0;
    bottom: 0;
    left: -158%;
    width: 4.5vw;
    height: 4.5vw;
    margin: auto;
            background-position:center center;
background-size: cover;
    background-image: url(images/ll10.jpg);
    border-radius: 50%;
    animation: circle_third 0.25s linear 2s forwards;
    opacity: 0;
}

.circle_item05_5 {
    position: absolute;
    top: -175%;
    right: 0;
    bottom: 0;
    left: -227%;
    width: 4.5vw;
    height: 4.5vw;
    margin: auto;
            background-position:center center;
background-size: cover;
    background-image: url(images/ll11.jpg);
    border-radius: 50%;
    animation: circle_third 0.245s linear 2.05s forwards;
    opacity: 0;
}

.circle_item06_6 {
    position: absolute;
    top: -200%;
    right: 0;
    bottom: 0;
    left: -298%;
    width: 4.5vw;
    height: 4.5vw;
    margin: auto;
            background-position:center center;
background-size: cover;
    background-image: url(images/ll12.png);
    border-radius: 50%;
    animation: circle_third 0.24s linear 2.1s forwards;
    opacity: 0;
}

@keyframes circle_twice {
    0% {
        transform: translate3d(0, 0, 0);
        opacity: 1;
    }
    25% {
        transform: translate3d(75%, -120%, 0);
        opacity: 1;
    }
    50% {
        transform: translate3d(100%, -240%, 0);
        opacity: 1;
    }
    75% {
        transform: translate3d(75%, -360%, 0);
        opacity: 1;
    }
    100% {
        transform: translate3d(0, -480%, 0);
        opacity: 1;
    }
}

@keyframes circle_third {
    0% {
        transform: translate3d(0, 0, 0);
        opacity: 1;
    }
    25% {
        transform: translate3d(75%, 120%, 0);
        opacity: 1;
    }
    50% {
        transform: translate3d(100%, 240%, 0);
        opacity: 1;
    }
    75% {
        transform: translate3d(75%, 360%, 0);
        opacity: 1;
    }
    100% {
        transform: translate3d(0, 480%, 0);
        opacity: 1;
    }
}

/*===================
animation03
====================*/

.animation03 {
    display: flex;
    align-items: center;
    flex-wrap: wrap;
    position: absolute;
    width: 100%;
    height: 100%;
}

.animation03 div {
    width: 10vw;
    height: 10vw;
    background-color: #cac9ca;
   
    transform: rotate(45deg);
    animation: bg 0.5s linear 2.5s forwards;
    opacity: 0;
    z-index: 99;
}

@keyframes bg {
    0% {
        transform: scale3d(0, 0, 0) rotate(45deg);
        opacity: 1;
    }
    75% {
        transform: scale3d(1, 1, 1) rotate(45deg);
        opacity: 1;
    }
    100% {
        transform: scale3d(1.5, 1.5, 1) rotate(45deg);
        opacity: 1;
    }
}

/*===================
animation04
====================*/

.animation04 {
    position: absolute;
    top: 50%;
    left: 50%;
    
    transform: translate(-50%, -50%);
    width: 100%;
    height: 100%;
    z-index: 9998;
}

.name_plate {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 100%;
    margin: auto;

      background-repeat: no-repeat;
    transform-origin: center;
    animation: name_plate 0.8s cubic-bezier(0.165, 0.84, 0.44, 1) 5.1s forwards;
    opacity: 0;
}

@keyframes name_plate {
    0% {
        transform: scale3d(0, 1, 1);
        opacity: 1;
    }
    100% {
        transform: scale3d(1, 1, 1);
        opacity: 1;
    }
}

.name {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    color: #1d80e8;
	width:100%;
	height:100%;
    animation: name 8.5s cubic-bezier(0.165, 0.84, 0.44, 1) 13s forwards;
    opacity: 0;
}

@keyframes name {
    0% {
        opacity: 0;
    }
    100% {
        opacity: 1;
    }
}

  </style>

</head>
<body>
    <div class="animation01">
        <div class="line_content line_content01">
            <div class="line_wrapper line_wrapper01">
                <div class="line01"></div>
                <div class="line02"></div>
            </div>
        </div>
        <div class="line_content line_content02">
            <div class="line_wrapper line_wrapper02">
                <div class="line02"></div>
                <div class="line01"></div>
            </div>
        </div>
    </div>
    <div class="animation02">
        <div class="square">
            <span class="square_item square_item01"></span>
            <span class="square_item square_item02"></span>
            <span class="square_item square_item03"></span>
            <span class="square_item square_item04"></span>
            <span class="square_item square_item05"></span>
            <span class="square_item square_item06"></span>
            <span class="square_item square_item07"></span>
            <span class="square_item square_item08"></span>
            <span class="circle_item01"></span>
            <span class="circle_item02"></span>
            <span class="circle_item03"></span>
            <span class="circle_item04"></span>
            <span class="circle_item05"></span>
            <span class="circle_item06"></span>
            <span class="circle_item01_1"></span>
            <span class="circle_item02_2"></span>
            <span class="circle_item03_3"></span>
            <span class="circle_item04_4"></span>
            <span class="circle_item05_5"></span>
            <span class="circle_item06_6"></span>
        </div>
    </div>
    <div class="animation03">
    
    </div>
    <div class="animation04">
        <div class="name_plate">       <div class="line_content line_content01">
            <div class="line_wrapper line_wrapper01">
            <div id="switcher">
         
                <div id="iframe-wrap">
                   
                </div>
                <input type="hidden" id="id" value="8855" />
                <input type="hidden" id="cate" value="201" />
                <input type="hidden" id="viewurl" value="http://v.bootstrapmb.com/2020/9/5cmxt8855" />
                <input type="hidden" id="defauldevice" value="0" />
                <div id='message_container'>
                    <div id='error'></div>
                </div>
            </div>
                <div class="line01"></div>
                <div class="line02"></div>
            </div>
        </div>
        <div class="line_content line_content02">
            <div class="line_wrapper line_wrapper02">
                <div class="line02"></div>
                <div class="line01"></div>
            </div>
        </div></div>
        <div class="name">    <a href="${pageContext.request.contextPath}/toindex"><div id="three-container"></div></a>

    <div id="instructions">
        <span class="fon"><div class='console-container'><span id='text'></span><div class='console-underscore' id='console'>&#95;</div></div></span>
    </div></div>
    </div>

</body>
<script>

consoleText(['歡迎光臨.', '感謝你的光臨', 'welcome'], 'text',['#d9a7c7','#E94057','lightblue']);

function consoleText(words, id, colors) {
if (colors === undefined) colors = ['#fff'];
var visible = true;
var con = document.getElementById('console');
var letterCount = 1;
var x = 1;
var waiting = false;
var target = document.getElementById(id)
target.setAttribute('style', 'color:' + colors[0])
window.setInterval(function() {

if (letterCount === 0 && waiting === false) {
  waiting = true;
  target.innerHTML = words[0].substring(0, letterCount)
  window.setTimeout(function() {
    var usedColor = colors.shift();
    colors.push(usedColor);
    var usedWord = words.shift();
    words.push(usedWord);
    x = 1;
    target.setAttribute('style', 'color:' + colors[0])
    letterCount += x;
    waiting = false;
  }, 1000)
} else if (letterCount === words[0].length + 1 && waiting === false) {
  waiting = true;
  window.setTimeout(function() {
    x = -1;
    letterCount += x;
    waiting = false;
  }, 1000)
} else if (waiting === false) {
  target.innerHTML = words[0].substring(0, letterCount)
  letterCount += x;
}
}, 120)
window.setInterval(function() {
if (visible === true) {
  con.className = 'console-underscore hidden'
  visible = false;

} else {
  con.className = 'console-underscore'

  visible = true;
}
}, 400)
}
</script>
</html>