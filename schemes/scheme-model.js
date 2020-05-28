const db = require('../data/db-config');


function find(){
    return db('schemes')
}

function findById(id){
    return db('schemes').where({id}).first();
}

function findSteps(id){
    return db('steps')
            .join('schemes', 'schemes.id', 'steps.scheme_id')
            .select('scheme_name', 'step_number', 'instructions')
            .orderBy('step_number')
            .where({ scheme_id: id });
    
}
function add(scheme){
    return db('schemes').insert(scheme);
}

function addStep(step, id){

}

function update(changes, id){

}

function remove(id){
    return db('schemes').where({id}).del();
}

module.exports = {
    find,
    findById,
    findSteps,
    add,
    addStep,
    update,
    remove
}