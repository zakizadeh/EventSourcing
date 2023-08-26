# Event Sourcing in .Net
Event Sourcing Sample with SQL and EventStoreDB 

What is Event Sourcing?
Martin Fowler says:

"Capture all changes to an application state as a sequence of events."


The whole event sourcing can be summed up in this one sentence, Now let's see together what the meaning and meaning of this one sentence means and how it wants to appear in our application?

To translate the above statement, it is better to say that the purpose of event sourcing is to record the behavior of the software in different situations, in other words, it means to store all the information that the software receives with different events, and whenever a new event occurs. We should add it to the end of the list of changes during our time, you should be able to identify exactly at what stage the behavior and performance of the software (or the same application) was wrong and unexpected. Event sourcing has many benefits, the most important of which is the logical debugging of the project and the quality and behavioral control of the project.

For example, in accounting systems that are directly related to company accounts and the number of debits and credits, it is very important to implement such a mechanism to correctly calculate financial amounts and discover monetary deductions at the end of calculations and reports. Also, when you present a new version of the project and you naturally expect to see these changes in the behavior of the project in some places that you have changed, this can be achieved by event sourcing and comparison with previously recorded data.

The software stores the list of events in an event store ( event store ), which is actually a database of various events in our system ( database of events ). This database has an API or software interface that can be accessed through We record and receive various events of a part of our software or business.

This database actually acts as a message broker that prepares another API for other services to connect to this particular event and whenever a change or event occurs in the system for this part, they too Be aware of this event and do your own work.

Advantages and benefits:


Event Sourcing has solved one of the biggest challenges of event-driven systems, which is that the events are recorded in the system with full confidence after every change.
It brings us a complete history (log) so that we can easily see the changes in a part of our software.
If you are migrating from monolith architecture to microservice, event sourcing will make this migration easier and sweeter for you.
As with any event-sourcing system, it has its own disadvantages


Disadvantages:

Event sourcing is a special and unfamiliar pattern and you have to make a lot of effort to learn and implement and understand its concept.
Likewise, deserting an event store is not a simple task, and for this purpose, you must use CQRS, which adds a little to the complexity of your system.
 

 

In short, from the point of view of a technical manager or a product owner, or from the point of view of a programmer who has a broad view, the use of event sourcing greatly improves the quality and accuracy of the project and minimizes the error rate and data loss. It is worth mentioning that by using event sourcing, after a while, a series of graphs and analytical charts of the behavior and performance of different parts of the project can be drawn, which gives us a lot of data and information at a glance and can be used in the decision. Help us with the decisions and prioritization of product development.



 

Simply put,  event sourcing  is a solution to store the state of an object based on the events that have happened to it since its creation. In this case, we will be able to create the state of any object at any moment of time by reconstructing these events. Although there are many benefits to this method, one should not neglect its essence, which is to pay attention to behavior instead of state.
Other advantages of using this method are:

Changing the storage mechanism does not change the program.

Performance is improved due to the simplicity of storing events.

No need for  orm layer   for storage.

Keeping a history of events that happened in the system.

Simplicity of integration with other subsystems.

Walking in the past and predicting the future.

Troubleshooting a running system by repeating the events that led to the error.


there is "EsEventStore" Class for store events in  EventStoreDB  and "SqlEventStore" class for save events in SQL server. 


you can see how the program works in the following diagram : 


![Untitled](https://github.com/zakizadeh/EventSourcing/assets/11499371/a5d002b2-6308-4b28-a6e0-ae96efb008ab)


in this sample you should run EventSourcingSample.Endpoint project and save product in the database:

![eventsttore1](https://github.com/zakizadeh/EventSourcing/assets/11499371/5f2b2dd2-5317-473a-b20b-bac8e43f6504)

![eventsttore2](https://github.com/zakizadeh/EventSourcing/assets/11499371/b59bf3af-6f48-4b86-9a3c-96f4eb92438d)

![eventsttore4](https://github.com/zakizadeh/EventSourcing/assets/11499371/cd4bd23f-9cba-475e-93d8-1dcde10a7aca)

then get events by id : 

![eventsttore3](https://github.com/zakizadeh/EventSourcing/assets/11499371/a7253290-61a6-4788-a826-1295a39dc7cd)


