Import express from 'express';
Import mongoose from 'mongoose';
Import dotenv from 'dotenv';
Dotenv.config();
Const app = express();
App.use(express.json());
App.get('/health', (req,res)=>res.json({ok:true}));
App.listen(process.env.PORT||4000, ()=>console.log('Backend started'));
