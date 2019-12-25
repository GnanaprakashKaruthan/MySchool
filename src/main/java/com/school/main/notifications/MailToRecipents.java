package com.school.main.notifications;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import com.sun.mail.util.MailSSLSocketFactory;

public class MailToRecipents {

	public static String sendEmail(String email, String name) throws AddressException, MessagingException, IOException {
		try {
			sendmail(email, name);
		} catch (GeneralSecurityException e) {
			e.printStackTrace();
		}
		return "successful";
	}

	private static void sendmail(String email, String name)
			throws AddressException, MessagingException, IOException, GeneralSecurityException {
		Properties props = new Properties();

		// to ignore cert issue
		MailSSLSocketFactory socketFactory = new MailSSLSocketFactory();
		socketFactory.setTrustAllHosts(true);
		props.put("mail.smtp.ssl.socketFactory", socketFactory);

		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				// return new PasswordAuthentication("programmingcafe2020@gmail.com",
				// "Test@123");
				return new PasswordAuthentication("programmingcafe2020@gmail.com", "Test@123");
			}
		});

		Message msg = new MimeMessage(session);
		msg.setFrom(new InternetAddress("noreply@bharathischool.com", false));

		msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
		msg.setSubject("Registration is successfull");
		msg.setContent("Dear " + name + ",\n" + "Welcome School of Excellence"
				+ "Your registration is successfull!\n\n\n"
				+ "Thanks & Regards\n"
				+ "Bharathi School of Excellence\n\n\n"
				+ "Note: This is system generated email, no need to reply for this email\n"
				, "text/html");
		msg.setSentDate(new Date());

		MimeBodyPart messageBodyPart = new MimeBodyPart();
		messageBodyPart.setContent("Tutorials point email", "text/html");

		Multipart multipart = new MimeMultipart();
		multipart.addBodyPart(messageBodyPart);
//		MimeBodyPart attachPart = new MimeBodyPart();
//
//		attachPart.attachFile("/var/tmp/image19.png");
//		multipart.addBodyPart(attachPart);
		msg.setContent(multipart);
		Transport.send(msg);
	}

}
