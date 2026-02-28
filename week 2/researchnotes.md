Robotics 
- inverse kinematics
- Data vizualization

Unity WebGL 

.csv 

Joints with torque -> we translate the force into energy consumption 

Unity ML agents 

how to translate torque into energy consumption 

live variables to csv c# 

Unity force simulator for joints



Model trainer

Unity force simulator for joints

Six degrees of freedom 

What is gonna be the design of the robotic arm?


Source that could be useful for energy consumption 

https://link.springer.com/article/10.1007/s00170-024-13496-w

parse csv files using Javascript 

Formula to use to find the 

Energy consumed = integral torque (t) * angular velocity of joint (t) / n  dt 

Power = torque * angular velocity 

angular velocity 

How to calculate system efficiency? 

energy output 

How to implement the formulas into the training agent?

training script 

Robot agent, robot arm controller 



parameters: 

time, box position, rotation of joint 

data parsing? 


Ideally we want the arctan graph to show the progress of the AI

Backwards propagation to put the AI in the right direction 






https://youtu.be/QN-Awth50aA 

n Unity, you generally apply torque using Rigidbody.AddTorque or Rigidbody.AddForceAtPosition, rather than explicitly "calculating" the resulting torque's effect on every object state change yourself. The physics engine handles the complex calculations based on the object's mass distribution (inertia tensor) and the force applied. Applying Torque in Unity You apply torque to a GameObject with a Rigidbody component through scripting (usually in FixedUpdate for consistent physics results). 1. Using Rigidbody.AddTorque() This method applies rotational force around the object's center of mass. csharpusing UnityEngine;

public class TorqueApplier : MonoBehaviour
{
    public float torqueAmount = 10f;
    private Rigidbody rb;

    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    void FixedUpdate()
    {
        // Example: Apply torque around the Y-axis (up direction)
        rb.AddTorque(transform.up * torqueAmount); 
        
        // Use ForceMode.Impulse for an instantaneous burst of rotation
        // rb.AddTorque(transform.up * torqueAmount, ForceMode.Impulse); 
    }
}
ForceMode.Force (default): Interprets the input as a continuous torque (Newton-meters) applied over time, resulting in a gradual change in angular velocity.ForceMode.Impulse: Interprets the input as an instantaneous change in angular momentum. 2. Using Rigidbody.AddForceAtPosition() Applying a force at an offset from the center of mass automatically creates both linear force and torque. csharpusing UnityEngine;


public class ForceAtPositionApplier : MonoBehaviour
{
    public float forceMagnitude = 10f;
    public Vector3 applyPosition; // Point relative to the object's center of mass
    private Rigidbody rb;

    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    void FixedUpdate()
    {
        Vector3 forceDirection = transform.forward; // Example direction
        Vector3 worldApplyPosition = transform.TransformPoint(applyPosition);
        
        // The physics engine automatically calculates the torque component
        rb.AddForceAtPosition(forceDirection * forceMagnitude, worldApplyPosition);
    }
}
Manually Calculating Torque (Physics Principle) If you need to calculate the theoretical torque produced by a force applied at a specific point in a custom script (for things like UI readouts or complex systems), you use the cross product of the distance vector and the force vector: \(\tau =r\times F\)\(\tau \) is the torque vector.\(r\) is the distance vector (from the center of mass to the point of force application).\(F\) is the force vector. In Unity C# code, this would look like: csharp// Assuming forceVector is the force applied and pointOfForce is the world position
Vector3 centerOfMass = myRigidbody.worldCenterOfMass;
Vector3 r = pointOfForce - centerOfMass;
Vector3 calculatedTorque = Vector3.Cross(r, forceVector);
You can then pass this calculatedTorque into Rigidbody.AddTorque. 



