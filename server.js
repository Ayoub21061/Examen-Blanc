import express from 'express';
import TVclass from './models/Television.js';


const app = express();
app.use(express.urlencoded({ extended: true }));

app.get("/", async function(request, response){
    const wishlist = await TVclass.loadMany({Achetée: 0});
    const boughtlist = await TVclass.loadMany({Achetée: 1, Fonctionnel: 1});
    const brokenlist = await TVclass.loadMany({Achetée: 1, Fonctionnel: 0});
    response.render('TVlist.ejs', {wishlist, boughtlist, brokenlist});
});

app.post('/add', async function(request, response) {
    const NewLigne= new TVclass();
    NewLigne.Marque = request.body.Marque;
    NewLigne.Prix = request.body.Prix;
    NewLigne.Taille = request.body.Taille;
    NewLigne.Achetée = 0;
    NewLigne.Fonctionnel = 1;
    await NewLigne.save();
    response.redirect('/');
});

app.get('/delete/:id', async function(req, res){
    await TVclass.delete({idtv: req.params.id});
    res.redirect('/');
});

app.get('/buy/:id', async function(req, res){
    const TV = await TVclass.load({idtv: req.params.id});
    TV.Achetée = 1;
    await TV.save();
    res.redirect("/");
});

// Direction vers l'autre page via le lien Casser
app.get('/broken/:id', async function(req, res){
    const Casser = await TVclass.load({idtv: req.params.id});
    res.render('Broken.ejs', {Casser});
});

// Envoyer le motif de la casse grâce au bouton
app.post('/break/:id', async function(req, res){
    const Casser = await TVclass.load({idtv: req.params.id});
    Casser.Fonctionnel = 0;
    Casser.Cause = req.body.broken;
    await Casser.save();
    res.redirect('/');
});

// Ajouter une image
app.use(express.static('public'));

app.listen(4000);