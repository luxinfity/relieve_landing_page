const pug = require('pug');

// Compile the source code
const compiledFunction = pug.compileFile('./views/index.pug');

console.log(
    compiledFunction({
        name: 'Timothy'
    })
);