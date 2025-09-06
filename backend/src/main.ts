import express from 'express';
import mongoose from 'mongoose';
import dotenv from 'dotenv';
dotenv.config()
const app = express();
app.use(express.json());
app.get('/health', (req,res)=>res.json({ok:true}));
console.log('Attempting to start backend...');
app.listen(process.env.PORT||4000, ()=>{
  console.log('Backend started');
  console.log('Backend listening on port ' + (process.env.PORT||4000));
});
