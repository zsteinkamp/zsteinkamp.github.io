const cols = 50;
const rows = 50;
const frameDelayMs = 10;
const appElem = document.getElementById('app');
const iterationsElem = document.getElementById('iterations');
let matrix = {};
const elemMatrix = {};
let interval = null;
let iterations = 0;
const vals = {
  random: 0.2,
  lonely: 1,
  crowded: 4,
  spawn: 3
};

function seedMatrix() {
  iterateMatrix( (x, y) => {
    matrix[ [x,y] ] = parseInt(vals.random + Math.random(1));
  });
}


function iterate() {
  const newMatrix = {};
  iterateMatrix( (x, y) => {
    const numNeighbors = neighborCount(x, y);
    const currVal = matrix[ [x,y] ];

    if (currVal === 1 && (numNeighbors > vals.lonely && numNeighbors < vals.crowded)) {
      newMatrix[ [x,y] ] = 1;
    } else if (currVal === 0 && numNeighbors === vals.spawn) {
      newMatrix[ [x,y] ] = 1;
    } else {
      newMatrix[ [x,y] ] = 0;
    }
  });
  matrix = newMatrix;

  iterations += 1;
  iterationsElem.innerHTML = iterations;
}


function neighborCount(x, y) {
  let neighbors = 0;
  for (let dy = -1; dy <= 1; dy++) {
    let ny = (rows + y + dy) % rows;
    for (let dx = -1; dx <= 1; dx++) {
      let nx = (cols + x + dx) % cols;

      if (nx === x && ny === y) { continue; }

      neighbors += matrix[ [nx, ny] ];
    }
  }
  return neighbors;
}


function cellId(x,y) {
  return 'cell-' + x + '-' + y;
}


function initMatrixElements() {
  iterateMatrix( (x, y) => {
    let elem = document.createElement('div');
    elem.id = cellId(x,y);
    elem.style['grid-row'] = y + 1;
    elem.style['grid-column'] = x + 1;
    elem.className = 'cell';
    elemMatrix[ [x,y] ] = elem;
    appElem.appendChild(elem);
  });
}

function render() {
  iterateMatrix( (x, y) => {
    if (matrix[ [x,y] ] === 1) {
      elemMatrix[ [x,y] ].classList.add('on');
    } else {
      elemMatrix[ [x,y] ].classList.remove('on');
    }
  });
}


function iterateMatrix(yieldXY) {
  for (let y = 0; y < rows; y++) {
    for (let x = 0; x < cols; x++) {
      yieldXY(x,y);
    }
  }
}


function setVal(key) {
  vals[key] = parseFloat(document.getElementById(key).value);
}

function start() {
  interval = setInterval( () => {
    render();
    iterate();
  }, frameDelayMs);
};

function pause() {
  clearInterval(interval);
  interval = null;
}

function playPause() {
  if (interval !== null) {
    pause();
  } else {
    start();
  }
}

function restart() {
  if (interval !== null) {
    pause();
  }
  iterations = 0;
  seedMatrix();
  start();
}

// init textboxes
for (const key in vals) {
  document.getElementById(key).value = vals[key];
}
// draw empty cell divs
initMatrixElements();
// calc a random grid
restart();
