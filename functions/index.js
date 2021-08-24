const functions = require('firebase-functions')
const admin = require('firebase-admin')
admin.initializeApp()

exports.sendNotification = functions.firestore
    .document('messages/{id}/messages/{messagesId}')
    .onCreate((snap, context) => {
        console.log('----------------start function--------------------')

        const doc = snap.data()
        console.log(doc)

        const idFrom = doc.sender
        const idTo = doc.receiver
        const contentMessage = doc.text

        // Get push token user to (receive)
        admin
            .firestore()
            .collection('users')
            .where('id', '==', idTo)
            .get()
            .then(querySnapshot => {
                querySnapshot.forEach(userTo => {
                    console.log(`Found user to: ${userTo.data().userName}`)
                    if (userTo.data().tokens != null) {
                        // Get info user from (sent)
                        admin
                            .firestore()
                            .collection('users')
                            .where('id', '==', idFrom)
                            .get()
                            .then(querySnapshot2 => {
                                querySnapshot2.forEach(userFrom => {
                                    console.log(`Found user from: ${userFrom.data().userName}`)
                                    const payload = {
                                        notification: {
                                            title: `You have a message from "${userFrom.data().userName}"`,
                                            body: contentMessage,
                                            badge: '1',
                                            sound: 'default'
                                        }
                                    }
                                    // Let push to the target device
                                    admin
                                        .messaging()
                                        .sendToDevice(userTo.data().tokens, payload)
                                        .then(response => {
                                            console.log('Successfully sent message:', response)
                                        })
                                        .catch(error => {
                                            console.log('Error sending message:', error)
                                        })
                                })
                            })
                    } else {
                        console.log('Can not find pushToken target user')
                    }
                })
            })
        return null
    })
