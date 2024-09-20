const User = require('../models/User')
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');

exports.registerUser = async (req, res) => {

    try {

    const {name, last_name, password, role, fingerprint } = req.body;

    if (!name || !last_name || !role || !password) {
        return res.status(400).json({ error: 'All fields are required' });
    }

    const hashedPassword = await bcrypt.hash(password, 10);

    console.log(hashedPassword)

        const newUser = await User.create({
            name,
            last_name,
            password: hashedPassword,
            role
        })

        res.status(201).json({ newUser });
    } catch (error) {
        res.status(400).send({ error: 'User already exists' });
    }
}

exports.loginUser = async (req, res) => {

    try {
    const JWT_SECRET = 'cannes123'

    const { name, password } = req.body;

    if (!name || !password) {
        return res.status(400).json({ error: 'Name and password are required' });
    }

    const user = await User.findOne({where: {name}});
    if (!user) return res.status(400).send({ error: 'User not found' });

    const isPasswordValid = await bcrypt.compare(password, user.password);
    if (!isPasswordValid) return res.status(400).send({ error: 'Invalid password' });

    const token = jwt.sign({ id: user.id, name: user.name, role: user.role}, JWT_SECRET, {expiresIn: '1h'});
    res.status(200).send({ token });
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Something went wrong'})
    }

    
}


exports.getAllUsers = async (req, res) => {
    try {
      const users = await User.findAll();
      res.json(users);
    } catch (err) {
      res.status(500).json({ error: err.message });
    }
  };