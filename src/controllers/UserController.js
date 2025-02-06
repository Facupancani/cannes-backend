const User = require("../models/User");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");

// Registrar usuario
exports.registerUser = async (req, res) => {
  try {
    const { username, name, last_name, password, role, fingerprint } = req.body;

    if (!username || !name || !last_name || !role || !password) {
      return res.status(401).json({ error: "All fields are required" });
    }

    if (username.length < 5) {
      return res
        .status(402)
        .json({ error: "Username should be longer than 5 characters" });
    }

    if (password.length < 5) {
      return res
        .status(403)
        .json({ error: "Password should be longer than 5 characters" });
    }

    const hashedPassword = await bcrypt.hash(password, 10);

    const newUser = await User.create({
      name,
      last_name,
      username,
      password: hashedPassword,
      role,
    });

    res.status(201).json({ newUser });
  } catch (error) {
    res.status(400).send({ error: "User already exists" });
  }
};

// Inicio de sesion de usuario
exports.loginUser = async (req, res) => {
  try {
    const JWT_SECRET = "cannes123";

    const { username, password } = req.body;

    if (!username || !password) {
      return res
        .status(401)
        .json({ error: "Username and password are required" });
    }

    const user = await User.findOne({ where: { username } });
    if (!user) return res.status(402).send({ error: "User not found" });

    const isPasswordValid = await bcrypt.compare(password, user.password);
    if (!isPasswordValid)
      return res.status(403).send({ error: "Invalid password" });

    const token = jwt.sign(
      {
        id: user.id,
        name: user.name,
        last_name: user.last_name,
        username: user.username,
        role: user.role,
      },
      JWT_SECRET,
      { expiresIn: "8h" }
    );
    res
      .status(200)
      .send({
        token,
        user: {
          id: user.id,
          name: user.name,
          last_name: user.last_name,
          username: user.username,
          role: user.role,
        },
      });
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: "Something went wrong" });
  }
};

exports.validatePassword = async (req, res) => {
  try {
    const { username, password, role } = req.body;

    // Validar contraseña vacía
    if (!password || password.trim() === "") {
      return res
        .status(400)
        .send({ error: `La contraseña para ${role} no puede estar vacía` });
    }

    const user = await User.findOne({ where: { username } });

    if (!user) {
      return res.status(404).send({ error: `Usuario no encontrado: ${role}` });
    }

    const isPasswordValid = await bcrypt.compare(password, user.password);
    if (!isPasswordValid) {
      return res
        .status(403)
        .send({ error: `Contraseña incorrecta para ${role}` });
    }

    res.status(200).send(true);
  } catch (err) {
    console.error(err);
    res.status(500).send({ error: "Error interno del servidor" });
  }
};

// Obtener todos los usuarios
exports.getAllUsers = async (req, res) => {
  try {
    const users = await User.findAll();
    res.json(users);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Obtener un usuario por nombre
exports.getUserByName = async (req, res) => {
  try {
    const { name } = req.params; // Get the name from URL parameters

    const user = await User.findOne({
      where: { name },
    });

    if (!user) {
      return res.status(404).json({ message: 'User not found' });
    }

    res.json(user); // Send the user data as JSON
  } catch (error) {
    console.error('Error fetching user:', error);
    res.status(500).json({ message: 'Internal server error' });
  }
};

exports.updateUser = async (req,res) => {
  try {
    const { name, last_name, username, role } = req.body;
    const user = await User.findByPk(req.params.id);
    if (user) {
      user.name = name;
      user.last_name = last_name
      user.username = username;
      user.role = role;
      await user.save();
      res.json(user);
    } else {
      res.status(404).json({ error: 'User not found' });
    }
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
}

exports.deleteUser = async (req, res) => {
  try {
    const user = await User.findByPk(req.params.id);
    if (user) {
      await user.destroy();
      res.json(user);
    } else {
      res.status(404).json({ error: 'User not found' });
    }
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
}