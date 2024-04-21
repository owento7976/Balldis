document.addEventListener('DOMContentLoaded', function () {
  const ball = document.querySelector('.ball');
  const paddle = document.querySelector('.paddle');
  const redStrip = document.querySelector('.red-strip');
  const gameContainer = document.querySelector('.game-container');
  const gameWidth = gameContainer.clientWidth;
  const gameHeight = gameContainer.clientHeight;
  let ballX = gameWidth / 2; // Posición inicial X de la pelota
  let ballY = gameHeight - 80; // Posición inicial Y de la pelota (encima de la barra)
  let speedX = 4; // Velocidad inicial X de la pelota
  let speedY = -4; // Velocidad inicial Y de la pelota
  let score = 0; // Contador de puntaje
  let redStripHits = -1; // Contador de golpes en la barra roja
  const scoreElement = document.getElementById('score');

  function moveBall() {
    ballX += speedX;
    ballY += speedY;

    // Detectar colisión con la barra
    if (ballX + ball.offsetWidth >= paddle.offsetLeft &&
        ballX <= paddle.offsetLeft + paddle.offsetWidth &&
        ballY + ball.offsetHeight >= paddle.offsetTop &&
        ballY <= paddle.offsetTop + paddle.offsetHeight) {
      speedY = -speedY; // Cambiar la dirección Y de la pelota
      speedX = (ballX - (paddle.offsetLeft + paddle.offsetWidth / 2)) / (paddle.offsetWidth / 2) * 3; // Cambiar la dirección X de la pelota según donde golpea la barra
      score++; // Incrementar el contador de puntos
      updateScore();
    }

    // Detectar colisión con la franja roja
    if (ballY + ball.offsetHeight >= redStrip.offsetTop &&
        ballX >= redStrip.offsetLeft &&
        ballX + ball.offsetWidth <= redStrip.offsetLeft + redStrip.offsetWidth) {
      speedY = -speedY; // Cambiar la dirección Y de la pelota
      speedX = -speedX; // Cambiar la dirección X de la pelota
      redStripHits++; // Incrementar el contador de golpes en la barra roja
      updateRedStripHits();
      if (redStripHits % 3 === 0) {
        score--; // Descontar un punto cada 1 golpes en la barra roja
        updateScore();
      }
    }

    // Detectar colisión con los bordes verticales
    if (ballX <= 0 || ballX + ball.offsetWidth >= gameWidth) {
      speedX = -speedX; // Cambiar la dirección X de la pelota
    }

    // Detectar colisión con el borde superior
    if (ballY <= 0) {
      speedY = -speedY; // Cambiar la dirección Y de la pelota
    }

    // Actualizar la posición de la pelota
    ball.style.left = ballX + 'px';
    ball.style.top = ballY + 'px';

    // Solicitar el siguiente cuadro de animación
    requestAnimationFrame(moveBall);
  }

  function updateScore() {
    scoreElement.textContent = score;
  }

  function updateRedStripHits() {
    document.getElementById('red-strip-hits').textContent = redStripHits;
  }

  // Mover la barra con las flechas del teclado
  document.addEventListener('keydown', function (event) {
    if (event.key === 'ArrowLeft' && paddle.offsetLeft > 0) {
      paddle.style.left = (paddle.offsetLeft - 30) + 'px';
    } else if (event.key === 'ArrowRight' && paddle.offsetLeft + paddle.offsetWidth < gameWidth) {
      paddle.style.left = (paddle.offsetLeft + 30) + 'px';
    }
  });

  // Iniciar el movimiento de la pelota
  moveBall();
});

// Simulando un puntaje de ejemplo
const puntaje = [
  [1, 0, 1, 0, 1],
  [0, 1, 0, 1, 0],
  [1, 0, 1, 0, 1],
  [0, 1, 0, 1, 0],
  [1, 0, 1, 0, 1]
];

const container = document.getElementById('puntaje');

// Generar las celdas del puntaje
for (let i = 0; i < puntaje.length; i++) {
  for (let j = 0; j < puntaje[i].length; j++) {
    const cell = document.createElement('div');
    cell.classList.add('cell');
    if (puntaje[i][j] === 1) {
      cell.style.backgroundColor = 'yellow'; // Color de celda activa
    }
    container.appendChild(cell);
  }
}