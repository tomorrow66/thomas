Pony Vesper Plugin
==================
> Sends email.


mail
----
> Sends email using default settings.

    Pony.mail(
		via: :smtp,
		via_options: settings.mail_server,
		to: 'you@example.com',
		subject:'This is a sample email',
		body: 'Can you read me now?'
	)